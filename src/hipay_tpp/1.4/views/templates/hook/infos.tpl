{*
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
*}


<fieldset>
	<legend>{l s='Informations techniques pour le bon fonctionnement du module HiPay' mod='hipay_tpp'}</legend>
	<div class="info">
		<img src="{$this_path_bw}hipay.png" style="float:left; margin-right:15px;" width="200" height="43">
		<p><strong>{l s='This module allows you to accept secure payement with Visa, Mastercard and European solutions via HiPay' mod='hipay_tpp'}</strong></p>
		<p>&nbsp;</p>
		<h3>{l s='Information on configuring HiPay TPP' mod='hipay_tpp'}</h3>
		<p><strong>{l s='Notification URL :' mod='hipay_tpp'}</strong> {$this_callback}</p>
		<p><strong>{l s='Ip address of your server :' mod='hipay_tpp'}</strong> {$this_ip}</p>
		<p>
			<strong>{l s='Configuration de la tâche automatique (CRON) sur votre hébergement :' mod='hipay_tpp'}</strong><br />
			Vous devez sur la configuration de votre hébergement, ajouter dans le système de tâche autmatique CRON (crontab) cette URL<br />
			<strong>{$this_cron}</strong>
			<br/>
			Nous vous conseillons d'ajouter une fréquence d'appel tous les 5 min.
		</p>
		<p>
			Si vous voulez paramétrer directement la Crontab de votre serveur d'hébergement, il vous suffit d'ajouter cette ligne<br /><br/>
			<strong>{$this_config_cron}</strong>
			<br/>
			Celle-ci est paramétrée sur une fréquence d'appel tous les 5 min.
		</p>
	</div>
</fieldset>