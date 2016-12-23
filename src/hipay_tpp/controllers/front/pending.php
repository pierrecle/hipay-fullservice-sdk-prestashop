<?php
/*
* 2007-2013 Profileo
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to contact@profileo.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade Profileo to newer
* versions in the future. If you wish to customize Profileo for your
* needs please refer to http://www.profileo.com for more information.
*
*  @author Profileo <contact@profileo.com>
*  @copyright  2007-2013 Profileo
*  
*  International Registered Trademark & Property of Profileo
*/

/**
 *
 * @since 1.5.0
 */
class HiPay_TppPendingModuleFrontController extends ModuleFrontController {
	/**
	 *
	 * @see FrontController::postProcess()
	 */
	public function postProcess() {
        $cart_id = Context::getContext()->cookie->id_cart;

        // Disconnect User from cart
        HipayClass::unsetCart();

        Hook::exec('displayHiPayPending', ['cart_id' => $cart_id, 'order_id' => Order::getOrderByCartId($cart_id)]);

		$this->setTemplate ( 'payment_pending.tpl' );
	}
}