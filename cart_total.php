<?php
	include 'includes/session.php';

	if(isset($_SESSION['user'])){
		$conn = $pdo->open();

		$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products on products.id=cart.product_id WHERE user_id=:user_id");
		$stmt->execute(['user_id'=>$user['id']]);

		$total = 0;
		foreach($stmt as $row){
			$subtotal = $row['price'] * $row['quantity'];
			$total += $subtotal;
		}

		$pdo->close();

		echo json_encode($total);
	}
	/*
	paypal.Button.render({
		env: 'sandbox', // change for production if app is live,
	
		client: {
			sandbox:    'ASb1ZbVxG5ZFzCWLdYLi_d1-k5rmSjvBZhxP2etCxBKXaJHxPba13JJD_D3dTNriRbAv3Kp_72cgDvaZ',
			//production: 'AaBHKJFEej4V6yaArjzSx9cuf-UYesQYKqynQVCdBlKuZKawDDzFyuQdidPOBSGEhWaNQnnvfzuFB9SM'
		},
	
		commit: true, // Show a 'Pay Now' button
	
		style: {
			color: 'gold',
			size: 'small'
		},
	
		payment: function(data, actions) {
			return actions.payment.create({
				payment: {
					transactions: [
						{
							//total purchase
							amount: { 
								total: total, 
								currency: 'USD' 
							}
						}
					]
				}
			});
		},
	
		onAuthorize: function(data, actions) {
			return actions.payment.execute().then(function(payment) {
				window.location = 'sales.php?pay='+payment.id;
			});
		},
	
	}, '#paypal-button');*/
?>