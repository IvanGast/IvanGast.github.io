function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["restricted-system-settings-system-settings-module"], {
  /***/
  "./src/app/layout/restricted/system-settings/system-settings-routing.module.ts":
  /*!*************************************************************************************!*\
    !*** ./src/app/layout/restricted/system-settings/system-settings-routing.module.ts ***!
    \*************************************************************************************/

  /*! exports provided: SystemSettingsRoutingModule */

  /***/
  function srcAppLayoutRestrictedSystemSettingsSystemSettingsRoutingModuleTs(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony export (binding) */


    __webpack_require__.d(__webpack_exports__, "SystemSettingsRoutingModule", function () {
      return SystemSettingsRoutingModule;
    });
    /* harmony import */


    var _system_settings_component__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(
    /*! ./system-settings.component */
    "./src/app/layout/restricted/system-settings/system-settings.component.ts");
    /* harmony import */


    var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");
    /* harmony import */


    var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(
    /*! @angular/router */
    "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");

    var routes = [{
      path: '',
      component: _system_settings_component__WEBPACK_IMPORTED_MODULE_0__["SystemSettingsComponent"]
    }];

    var SystemSettingsRoutingModule = function SystemSettingsRoutingModule() {
      _classCallCheck(this, SystemSettingsRoutingModule);
    };

    SystemSettingsRoutingModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineNgModule"]({
      type: SystemSettingsRoutingModule
    });
    SystemSettingsRoutingModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineInjector"]({
      factory: function SystemSettingsRoutingModule_Factory(t) {
        return new (t || SystemSettingsRoutingModule)();
      },
      imports: [[_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forChild(routes)], _angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]]
    });

    (function () {
      (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵsetNgModuleScope"](SystemSettingsRoutingModule, {
        imports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]],
        exports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]]
      });
    })();
    /*@__PURE__*/


    (function () {
      _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵsetClassMetadata"](SystemSettingsRoutingModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"],
        args: [{
          imports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forChild(routes)],
          exports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]]
        }]
      }], null, null);
    })();
    /***/

  },

  /***/
  "./src/app/layout/restricted/system-settings/system-settings.module.ts":
  /*!*****************************************************************************!*\
    !*** ./src/app/layout/restricted/system-settings/system-settings.module.ts ***!
    \*****************************************************************************/

  /*! exports provided: SystemSettingsModule */

  /***/
  function srcAppLayoutRestrictedSystemSettingsSystemSettingsModuleTs(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony export (binding) */


    __webpack_require__.d(__webpack_exports__, "SystemSettingsModule", function () {
      return SystemSettingsModule;
    });
    /* harmony import */


    var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(
    /*! @angular/core */
    "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");
    /* harmony import */


    var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(
    /*! @angular/common */
    "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");
    /* harmony import */


    var _system_settings_routing_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(
    /*! ./system-settings-routing.module */
    "./src/app/layout/restricted/system-settings/system-settings-routing.module.ts");

    var SystemSettingsModule = function SystemSettingsModule() {
      _classCallCheck(this, SystemSettingsModule);
    };

    SystemSettingsModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineNgModule"]({
      type: SystemSettingsModule
    });
    SystemSettingsModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjector"]({
      factory: function SystemSettingsModule_Factory(t) {
        return new (t || SystemSettingsModule)();
      },
      imports: [[_angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"], _system_settings_routing_module__WEBPACK_IMPORTED_MODULE_2__["SystemSettingsRoutingModule"]]]
    });

    (function () {
      (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsetNgModuleScope"](SystemSettingsModule, {
        imports: [_angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"], _system_settings_routing_module__WEBPACK_IMPORTED_MODULE_2__["SystemSettingsRoutingModule"]]
      });
    })();
    /*@__PURE__*/


    (function () {
      _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](SystemSettingsModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"],
        args: [{
          declarations: [],
          imports: [_angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"], _system_settings_routing_module__WEBPACK_IMPORTED_MODULE_2__["SystemSettingsRoutingModule"]]
        }]
      }], null, null);
    })();
    /***/

  }
}]);
//# sourceMappingURL=restricted-system-settings-system-settings-module-es5.js.map