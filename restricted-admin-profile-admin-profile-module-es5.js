function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["restricted-admin-profile-admin-profile-module"], {
  /***/
  "./src/app/layout/restricted/admin-profile/admin-profile-routing.module.ts":
  /*!*********************************************************************************!*\
    !*** ./src/app/layout/restricted/admin-profile/admin-profile-routing.module.ts ***!
    \*********************************************************************************/

  /*! exports provided: AdminProfileRoutingModule */

  /***/
  function srcAppLayoutRestrictedAdminProfileAdminProfileRoutingModuleTs(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony export (binding) */


    __webpack_require__.d(__webpack_exports__, "AdminProfileRoutingModule", function () {
      return AdminProfileRoutingModule;
    });
    /* harmony import */


    var _admin_profile_component__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(
    /*! ./admin-profile.component */
    "./src/app/layout/restricted/admin-profile/admin-profile.component.ts");
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
      component: _admin_profile_component__WEBPACK_IMPORTED_MODULE_0__["AdminProfileComponent"]
    }];

    var AdminProfileRoutingModule = function AdminProfileRoutingModule() {
      _classCallCheck(this, AdminProfileRoutingModule);
    };

    AdminProfileRoutingModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineNgModule"]({
      type: AdminProfileRoutingModule
    });
    AdminProfileRoutingModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineInjector"]({
      factory: function AdminProfileRoutingModule_Factory(t) {
        return new (t || AdminProfileRoutingModule)();
      },
      imports: [[_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forChild(routes)], _angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]]
    });

    (function () {
      (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵsetNgModuleScope"](AdminProfileRoutingModule, {
        imports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]],
        exports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]]
      });
    })();
    /*@__PURE__*/


    (function () {
      _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵsetClassMetadata"](AdminProfileRoutingModule, [{
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
  "./src/app/layout/restricted/admin-profile/admin-profile.module.ts":
  /*!*************************************************************************!*\
    !*** ./src/app/layout/restricted/admin-profile/admin-profile.module.ts ***!
    \*************************************************************************/

  /*! exports provided: AdminProfileModule */

  /***/
  function srcAppLayoutRestrictedAdminProfileAdminProfileModuleTs(module, __webpack_exports__, __webpack_require__) {
    "use strict";

    __webpack_require__.r(__webpack_exports__);
    /* harmony export (binding) */


    __webpack_require__.d(__webpack_exports__, "AdminProfileModule", function () {
      return AdminProfileModule;
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


    var _admin_profile_routing_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(
    /*! ./admin-profile-routing.module */
    "./src/app/layout/restricted/admin-profile/admin-profile-routing.module.ts");

    var AdminProfileModule = function AdminProfileModule() {
      _classCallCheck(this, AdminProfileModule);
    };

    AdminProfileModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineNgModule"]({
      type: AdminProfileModule
    });
    AdminProfileModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjector"]({
      factory: function AdminProfileModule_Factory(t) {
        return new (t || AdminProfileModule)();
      },
      imports: [[_angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"], _admin_profile_routing_module__WEBPACK_IMPORTED_MODULE_2__["AdminProfileRoutingModule"]]]
    });

    (function () {
      (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsetNgModuleScope"](AdminProfileModule, {
        imports: [_angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"], _admin_profile_routing_module__WEBPACK_IMPORTED_MODULE_2__["AdminProfileRoutingModule"]]
      });
    })();
    /*@__PURE__*/


    (function () {
      _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](AdminProfileModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"],
        args: [{
          declarations: [],
          imports: [_angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"], _admin_profile_routing_module__WEBPACK_IMPORTED_MODULE_2__["AdminProfileRoutingModule"]]
        }]
      }], null, null);
    })();
    /***/

  }
}]);
//# sourceMappingURL=restricted-admin-profile-admin-profile-module-es5.js.map