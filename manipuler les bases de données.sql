--3.1 - Formaliser des requêtes à l'aide du langage SQL
--3.1.1 - Pour chacune des interrogations demandées (voir cahier des charges), créez un script contenant la ou les requêtes nécessaires.

    --Un module de gestion des commandes. Réservé au service commercial, ce module doit permettre de :

        --Créer une nouvelle commande
        
        INSERT INTO `orders` (`ord_id`,`ord_ref`,`ord_date`,`ord_payment`,`ord_ship`,`ord_reception`,`ord_status`,`cus_id`)
        VALUES ();

        --Ajouter des produits dans la commande

        INSERT INTO `order_details` (`ode_id`,`ode_quantity`,`ode_discount`,`pro_id`,`ord_id`) 
        VALUES();

        --Connaître l'état de la commande (saisie, annulée, en préparation, expédiée, facturée, retard de paiement, soldée)

        SELECT ord_status 
        FROM orders
        WHERE ord_id= 10; -- ord_id de la commande en question

        --Consulter les clients en retard de paiement à une date donnée

        SELECT customers.* 
        FROM customers 
        INNER JOIN orders
        ON customers.cus_id=orders.cus_id
        WHERE (ord_payment > '2020-06-17' OR ord_payment IS NULL) 
        AND ord_reception < '2020-06-17'
        AND ord_date <'2020-06-17';

        --Modifier ou annuler la commande avant qu’elle ne soit en préparation

        UPDATE orders
        SET ord_ref= ,
            ord_date= ,
            ord_payment= ,
            ord_ship= , 
            ord_reception= ,
            ord_status=, 
            cus_id=
        WHERE ord_id= 'ord_id de la commande en question';

        DELETE FROM orders
        WHERE ord_id= 'ord_id de la commande en question';


    --Un module de gestion des produits 
        
        --ajouter des produits et leurs caractéristiques (libellé, caractéristiques, prix etc.)

        INSERT INTO `products` (`pro_id`,`pro_ref`,`pro_ean`,`pro_name`,`pro_price`,`pro_stock`,`pro_stock_alert`,`pro_color`,`pro_publish`,`pro_picture`,`pro_add`,`sup_id`,`cat_id`)
        VALUES();

        --modifier des produits

        UPDATE products
        SET 
            pro_ref= ,
            pro_ean= ,
            pro_name= ,
            pro_price= ,
            pro_stock= ,
            pro_stock_alert= ,
            pro_color= ,
            pro_publish= ,
            pro_picture= ,
            pro_add= ,
            sup_id= ,
            cat_id=
        WHERE pro_id= , 'pro_id du produit';

        --supprimer des produits
        DELETE FROM products
        WHERE pro_id IN('pro_id des produits');


--3.1.2 - Exportez les tables principales (entité) vers des tableaux d'un tableur de votre choix ainsi que le contenu du résultat de vos requêtes.


--3.1.3 - chiffre d'affaires généré pour l'ensemble et par fournisseur
--global
SELECT sum( ode_quantity*pro_price*(1-(cus_discount/100))) as "CA"
FROM products
INNER JOIN order_details 
ON products.pro_id =order_details.pro_id
INNER JOIN orders
ON order_details.ord_id=orders.ord_id
INNER JOIN customers
ON orders.cus_id=customers.cus_id

--par fournisseur

SELECT suppliers.sup_id,
    sup_name,
    ode_quantity*pro_price*(1-(cus_discount/100)) as "CA"
FROM suppliers
INNER JOIN products
ON suppliers.sup_id=products.sup_id
INNER JOIN order_details 
ON products.pro_id =order_details.pro_id
INNER JOIN orders
ON order_details.ord_id=orders.ord_id
INNER JOIN customers
ON orders.cus_id=customers.cus_id
GROUP BY suppliers.sup_id

--3.1.4 - liste des produits commandés pour une année sélectionnée (référence et nom du produit, quantité commandée, fournisseur)

SELECT products.pro_ref,
products.pro_name,
order_details.ode_quantity,
suppliers.sup_name
FROM suppliers
INNER JOIN products
ON suppliers.sup_id=products.sup_id
INNER JOIN order_details 
ON products.pro_id =order_details.pro_id
INNER JOIN orders
ON order_details.ord_id=orders.ord_id
WHERE ord_date LIKE '2020%'

--3.1.5 - liste des commandes pour un client (date de commande, ref client, montant, état de la commande)

SELECT orders.ord_date,
customers.cus_ref,
ode_quantity*pro_price*(1-(cus_discount/100)) as "Montant",
orders.ord_status
FROM products
INNER JOIN order_details 
ON products.pro_id =order_details.pro_id
INNER JOIN orders
ON order_details.ord_id=orders.ord_id
INNER JOIN customers
ON orders.cus_id=customers.cus_id
WHERE customers.cus_id = 10


--3.1.6 - répartition du chiffre d'affaire par type de client

SELECT sum( ode_quantity*pro_price*(1-(cus_discount/100))) as "CA"
FROM products
INNER JOIN order_details 
ON products.pro_id =order_details.pro_id
INNER JOIN orders
ON order_details.ord_id=orders.ord_id
INNER JOIN customers
ON orders.cus_id=customers.cus_id
WHERE customers.typ_id=1
UNION
SELECT sum( ode_quantity*pro_price*(1-(cus_discount/100))) as "CA"
FROM products
INNER JOIN order_details 
ON products.pro_id =order_details.pro_id
INNER JOIN orders
ON order_details.ord_id=orders.ord_id
INNER JOIN customers
ON orders.cus_id=customers.cus_id
WHERE customers.typ_id=2


--3.1.7 - lister les commandes en cours de livraison.
SELECT orders.*
FROM orders
WHERE ord_ship <= CURRENT_TIMESTAMP 
AND  ord_reception > CURRENT_TIMESTAMP