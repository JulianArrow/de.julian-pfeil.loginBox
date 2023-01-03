<?php

namespace wcf\system\box;

use wcf\system\WCF;

/**
 * Box Controller for the login box
 *
 * @author      Julian Pfeil <https://julian-pfeil.de>
 * @link        https://darkwood.design/store/user-file-list/1298-julian-pfeil/
 * @copyright   2022 Julian Pfeil Websites & Co.
 * @license     License for Commercial Plugins <https://julian-pfeil.de/lizenz/>
 * @package    de.julian-pfeil.loginBox
 * @subpackage system.box
 */
class JPLoginBoxController extends AbstractBoxController
{
    /**
     * @inheritDoc
     */
    protected static $supportedPositions = ['sidebarLeft', 'sidebarRight'];

    /**
     * @inheritDoc
     */
    protected function loadContent()
    {
            $this->content = WCF::getTPL()->fetch(
                'boxJPLogin', 
                'wcf', 
                [
                    'canLogInOrRegister' => !boolval(WCF::getUser()->userID),
                    'canLogOut' => boolval(WCF::getUser()->userID),
                    'canUseAcp' => WCF::getSession()->getPermission('admin.general.canUseAcp'),
                ], 
                true
            );
    }
}
