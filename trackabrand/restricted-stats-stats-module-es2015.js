(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["restricted-stats-stats-module"],{

/***/ "./src/app/layout/restricted/stats/stats-routing.module.ts":
/*!*****************************************************************!*\
  !*** ./src/app/layout/restricted/stats/stats-routing.module.ts ***!
  \*****************************************************************/
/*! exports provided: StatsRoutingModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "StatsRoutingModule", function() { return StatsRoutingModule; });
/* harmony import */ var _stats_component__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./stats.component */ "./src/app/layout/restricted/stats/stats.component.ts");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");
/* harmony import */ var _map_visualization_map_visualization_component__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./map-visualization/map-visualization.component */ "./src/app/layout/restricted/stats/map-visualization/map-visualization.component.ts");






const routes = [
    {
        path: '',
        component: _stats_component__WEBPACK_IMPORTED_MODULE_0__["StatsComponent"],
    },
    { path: 'map', component: _map_visualization_map_visualization_component__WEBPACK_IMPORTED_MODULE_3__["MapVisualizationComponent"] },
];
class StatsRoutingModule {
}
StatsRoutingModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineNgModule"]({ type: StatsRoutingModule });
StatsRoutingModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineInjector"]({ factory: function StatsRoutingModule_Factory(t) { return new (t || StatsRoutingModule)(); }, imports: [[_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forChild(routes)],
        _angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]] });
(function () { (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵsetNgModuleScope"](StatsRoutingModule, { imports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]], exports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]] }); })();
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵsetClassMetadata"](StatsRoutingModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"],
        args: [{
                imports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forChild(routes)],
                exports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]],
            }]
    }], null, null); })();


/***/ }),

/***/ "./src/app/layout/restricted/stats/stats.component.ts":
/*!************************************************************!*\
  !*** ./src/app/layout/restricted/stats/stats.component.ts ***!
  \************************************************************/
/*! exports provided: StatsComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "StatsComponent", function() { return StatsComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/__ivy_ngcc__/fesm2015/forms.js");
/* harmony import */ var src_app_api_stats_stats_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! src/app/api/stats/stats.service */ "./src/app/api/stats/stats.service.ts");




function StatsComponent_option_9_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "option", 15);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const item_r4 = ctx.$implicit;
    const i_r5 = ctx.index;
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵpropertyInterpolate"]("value", i_r5);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate1"](" ", item_r4, " ");
} }
function StatsComponent_div_10_div_1_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 16);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "app-line-visualization", 18);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const ctx_r6 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"](2);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("selectedList", ctx_r6.selectedListNumber)("scansCount", ctx_r6.scansCount)("scansWithoutAuth", ctx_r6.scansWithoutAuth)("productsCount", ctx_r6.productsCount);
} }
function StatsComponent_div_10_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 16);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](1, StatsComponent_div_10_div_1_Template, 2, 4, "div", 17);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const ctx_r1 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"]();
    const _r2 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](33);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx_r1.isLineChart)("ngIfElse", _r2);
} }
function StatsComponent_ng_template_32_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](0, "stats-map-visualization", 18);
} if (rf & 2) {
    const ctx_r3 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("selectedList", ctx_r3.selectedListNumber)("scansCount", ctx_r3.locScansCount)("scansWithoutAuth", ctx_r3.locScansWithoutAuth)("productsCount", ctx_r3.locProductsCount);
} }
class StatsComponent {
    constructor(fb, statsService) {
        this.fb = fb;
        this.statsService = statsService;
        this.isLineChart = true;
        this.selectorList = [
            "All scans",
            "Scans without authorization",
            "Total number of items",
        ];
        this.allScans = [];
        this.years = [];
        this.sortedByMonth = [[], [], [], [], [], [], [], [], [], [], [], []];
        this.scansCount = [];
        this.scansWithoutAuth = [];
        this.productsCount = [];
        this.sortedByLocation = [];
        this.locScansCount = [];
        this.locScansWithoutAuth = [];
        this.locProductsCount = [];
        this.dataLoaded = false;
        this.totalScans = 0;
        this.registeredScans = 0;
        this.productScans = 0;
        this.registeredPercent = 0;
        this.productsPercent = 0;
    }
    ngOnInit() {
        this.selectedListNumber = 0;
        this.getScans();
        this.typeForm = this.fb.group({
            type: [0]
        });
        this.typeForm.get("type").valueChanges.subscribe(f => {
            this.onTypeChanged(f);
        });
    }
    getScans() {
        this.statsService.getUserScans().subscribe((scanList) => {
            this.allScans = scanList.map((e) => this.parseScan(e));
            this.sortByMonth();
            this.sortByLocation();
        });
    }
    sortByMonth() {
        this.allScans.forEach((scan) => {
            this.sortedByMonth[scan.month].push(scan);
        });
        this.countMonthData();
    }
    countMonthData() {
        let allProductsCount = 0;
        let allUnregistered = 0;
        this.sortedByMonth.forEach(monthArray => {
            const productIds = [];
            var authCount = 0;
            monthArray.forEach((element) => {
                if (!productIds.includes(element.productId)) {
                    productIds.push(element.productId);
                }
                if (!element.isRegistered) {
                    authCount++;
                }
            });
            allProductsCount += productIds.length;
            allUnregistered += authCount;
            this.scansCount.push({ count: monthArray.length, month: this.sortedByMonth.indexOf(monthArray) });
            this.productsCount.push({ count: productIds.length, month: this.sortedByMonth.indexOf(monthArray) });
            this.scansWithoutAuth.push({ count: authCount, month: this.sortedByMonth.indexOf(monthArray) });
        });
        this.dataLoaded = true;
        this.totalScans = this.allScans.length;
        this.productScans = allProductsCount;
        this.registeredScans = this.totalScans - allUnregistered;
        this.registeredPercent = this.registeredScans * 100 / this.totalScans;
        this.productsPercent = this.productScans * 100 / this.totalScans;
    }
    sortByLocation() {
        const pairs = [];
        this.allScans.forEach(scan => {
            const pair = { latitude: scan.latitude, longitude: scan.longitude };
            var index;
            const bool = pairs.some((e) => {
                index = pairs.indexOf(e);
                return e.latitude === scan.latitude && e.longitude === scan.longitude;
            });
            if (!bool) {
                pairs.push(pair);
                this.sortedByLocation.push([scan]);
            }
            else {
                this.sortedByLocation[index].push(scan);
            }
        });
        this.countLocationData();
    }
    countLocationData() {
        this.sortedByLocation.forEach(locArray => {
            const productIds = [];
            var authCount = 0;
            var latitude;
            var longitude;
            locArray.forEach((element) => {
                latitude = element.latitude;
                longitude = element.longitude;
                if (!productIds.includes(element.productId)) {
                    productIds.push(element.productId);
                }
                if (!element.isRegistered) {
                    authCount++;
                }
            });
            this.locScansCount.push({ count: locArray.length, latitude, longitude });
            this.locProductsCount.push({ count: productIds.length, latitude, longitude });
            if (authCount !== 0) {
                this.locScansWithoutAuth.push({ count: authCount, latitude, longitude });
            }
        });
    }
    parseScan(scan) {
        return Object.assign(Object.assign({}, scan), { month: new Date(scan.time).getMonth(), latitude: Math.round(scan.latitude * 10) / 10, longitude: Math.round(scan.longitude * 10) / 10 });
    }
    onTypeChanged(value) {
        this.selectedListNumber = value;
    }
    toggleChartType() {
        this.isLineChart = !this.isLineChart;
    }
}
StatsComponent.ɵfac = function StatsComponent_Factory(t) { return new (t || StatsComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](_angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormBuilder"]), _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](src_app_api_stats_stats_service__WEBPACK_IMPORTED_MODULE_2__["StatsService"])); };
StatsComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: StatsComponent, selectors: [["app-stats"]], decls: 34, vars: 25, consts: [[1, "header"], [1, "container-fluid"], [1, "wrapper"], ["mat-button", "", 1, "btn", "btn-primary", "cyan-color", 3, "click"], [1, "form", 3, "formGroup"], ["formControlName", "type", 1, "select", "btn", "cyan-color"], ["class", "select-option", 3, "value", 4, "ngFor", "ngForOf"], ["class", "margin-content", 4, "ngIf"], [1, "info-card"], [1, "title"], [1, "item"], [1, "item-text"], [1, "align-right", 3, "color", "background", "current", "max", "radius", "stroke"], [1, "align-right", "progress-text", "item-text"], ["elseMap", ""], [1, "select-option", 3, "value"], [1, "margin-content"], ["class", "margin-content", 4, "ngIf", "ngIfElse"], [3, "selectedList", "scansCount", "scansWithoutAuth", "productsCount"]], template: function StatsComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "div", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "h1");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](3, "Stats");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "div", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](5, "button", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function StatsComponent_Template_button_click_5_listener() { return ctx.toggleChartType(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](7, "form", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "select", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](9, StatsComponent_option_9_Template, 2, 2, "option", 6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](10, StatsComponent_div_10_Template, 2, 2, "div", 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](11, "div", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](12, "p", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](13, "SCANS");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](14, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](15, "p", 11);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](16, "Total");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](17, "round-progress", 12);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](18, "span", 13);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](19);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](20, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](21, "p", 11);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](22, "Registered");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](23, "round-progress", 12);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](24, "span", 13);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](25);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](26, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](27, "p", 11);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](28, "Products");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](29, "round-progress", 12);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](30, "span", 13);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](31);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](32, StatsComponent_ng_template_32_Template, 1, 4, "ng-template", null, 14, _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplateRefExtractor"]);
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate"](ctx.isLineChart ? "Map View" : "Graph View");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("formGroup", ctx.typeForm);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngForOf", ctx.selectorList);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.dataLoaded);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("color", "#296d98")("background", "#909090")("current", 100)("max", 100)("radius", 17)("stroke", 4.5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate"](ctx.totalScans);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("color", "#296d98")("background", "#909090")("current", ctx.registeredPercent)("max", 100)("radius", 17)("stroke", 4.5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate"](ctx.registeredScans);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("color", "#296d98")("background", "#909090")("current", ctx.productsPercent)("max", 100)("radius", 17)("stroke", 4.5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate"](ctx.productScans);
    } }, styles: [".chart[_ngcontent-%COMP%] {\n  height: 800px;\n}\n\n.form[_ngcontent-%COMP%] {\n  display: inline-block;\n}\n\n.margin-content[_ngcontent-%COMP%] {\n  margin-top: 20px;\n}\n\n.select[_ngcontent-%COMP%] {\n  border: 0px;\n  margin-top: -3px;\n  height: 36px;\n  margin-left: 25px;\n}\n\n.chartWrapper[_ngcontent-%COMP%] {\n  overflow-x: scroll;\n}\n\n.info-card[_ngcontent-%COMP%] {\n  margin-top: 10px;\n  padding: 10px;\n  background-color: #fff;\n  border-radius: 5px;\n  max-width: 25%;\n  box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);\n}\n\n.info-card[_ngcontent-%COMP%]   .title[_ngcontent-%COMP%] {\n  font-size: 1em;\n  font-weight: 500;\n  margin-bottom: 10px;\n}\n\n.info-card[_ngcontent-%COMP%]   .item[_ngcontent-%COMP%] {\n  height: 44px;\n  border-radius: 5px;\n  margin-bottom: 10px;\n  background-color: rgba(118, 156, 162, 0.15);\n  padding: 5px 10px;\n}\n\n.item-text[_ngcontent-%COMP%] {\n  display: inline-block;\n  height: 20px;\n  margin-top: 7px;\n}\n\n.progress-text[_ngcontent-%COMP%] {\n  font-weight: 500;\n  color: #789ca1;\n}\n\n.align-right[_ngcontent-%COMP%] {\n  float: right;\n  margin-left: 25px;\n}\n\n.cyan-color[_ngcontent-%COMP%] {\n  background: #789ca1;\n  color: white;\n  outline: none;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvbGF5b3V0L3Jlc3RyaWN0ZWQvc3RhdHMvQzpcXERlcGxveWVkXFxJdmFuR2FzdC5naXRodWIuaW9cXHRyYWNrYWJyYW5kL3NyY1xcYXBwXFxsYXlvdXRcXHJlc3RyaWN0ZWRcXHN0YXRzXFxzdGF0cy5jb21wb25lbnQuc2NzcyIsInNyYy9hcHAvbGF5b3V0L3Jlc3RyaWN0ZWQvc3RhdHMvc3RhdHMuY29tcG9uZW50LnNjc3MiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7RUFDRSxhQUFBO0FDQ0Y7O0FERUE7RUFDRSxxQkFBQTtBQ0NGOztBRENBO0VBQ0UsZ0JBQUE7QUNFRjs7QURBQTtFQUNFLFdBQUE7RUFDQSxnQkFBQTtFQUNBLFlBQUE7RUFDQSxpQkFBQTtBQ0dGOztBREFBO0VBRUUsa0JBQUE7QUNFRjs7QURBQTtFQUNFLGdCQUFBO0VBQ0EsYUFBQTtFQUNBLHNCQUFBO0VBQ0Esa0JBQUE7RUFDQSxjQUFBO0VBR0Esc0NBQUE7QUNHRjs7QURERTtFQUNFLGNBQUE7RUFDQSxnQkFBQTtFQUNBLG1CQUFBO0FDR0o7O0FEQUU7RUFDRSxZQUFBO0VBQ0Esa0JBQUE7RUFDQSxtQkFBQTtFQUNBLDJDQUFBO0VBQ0EsaUJBQUE7QUNFSjs7QURFQTtFQUNFLHFCQUFBO0VBQ0EsWUFBQTtFQUNBLGVBQUE7QUNDRjs7QURDQTtFQUNFLGdCQUFBO0VBQ0EsY0FBQTtBQ0VGOztBREFBO0VBQ0UsWUFBQTtFQUNBLGlCQUFBO0FDR0Y7O0FEREE7RUFDRSxtQkFBQTtFQUNBLFlBQUE7RUFDQSxhQUFBO0FDSUYiLCJmaWxlIjoic3JjL2FwcC9sYXlvdXQvcmVzdHJpY3RlZC9zdGF0cy9zdGF0cy5jb21wb25lbnQuc2NzcyIsInNvdXJjZXNDb250ZW50IjpbIi5jaGFydCB7XHJcbiAgaGVpZ2h0OiA4MDBweDtcclxuICAvLyAgIHdpZHRoOiAxMDAwcHg7XHJcbn1cclxuLmZvcm0ge1xyXG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcclxufVxyXG4ubWFyZ2luLWNvbnRlbnQge1xyXG4gIG1hcmdpbi10b3A6IDIwcHg7XHJcbn1cclxuLnNlbGVjdCB7XHJcbiAgYm9yZGVyOiAwcHg7XHJcbiAgbWFyZ2luLXRvcDogLTNweDtcclxuICBoZWlnaHQ6IDM2cHg7XHJcbiAgbWFyZ2luLWxlZnQ6IDI1cHg7XHJcbn1cclxuXHJcbi5jaGFydFdyYXBwZXIge1xyXG4gIC8vICAgd2lkdGg6IDUwMHB4O1xyXG4gIG92ZXJmbG93LXg6IHNjcm9sbDtcclxufVxyXG4uaW5mby1jYXJkIHtcclxuICBtYXJnaW4tdG9wOiAxMHB4O1xyXG4gIHBhZGRpbmc6IDEwcHg7XHJcbiAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcclxuICBib3JkZXItcmFkaXVzOiA1cHg7XHJcbiAgbWF4LXdpZHRoOiAyNSU7XHJcbiAgLW1vei1ib3gtc2hhZG93OiAwIDAgOHB4IHJnYmEoMCwgMCwgMCwgMC4yKTtcclxuICAtd2Via2l0LWJveC1zaGFkb3c6IDAgMCA4cHggcmdiYSgzLCAyLCAyLCAwLjIpO1xyXG4gIGJveC1zaGFkb3c6IDAgMCA4cHggcmdiYSgwLCAwLCAwLCAwLjIpO1xyXG5cclxuICAudGl0bGUge1xyXG4gICAgZm9udC1zaXplOiAxZW07XHJcbiAgICBmb250LXdlaWdodDogNTAwO1xyXG4gICAgbWFyZ2luLWJvdHRvbTogMTBweDtcclxuICB9XHJcblxyXG4gIC5pdGVtIHtcclxuICAgIGhlaWdodDogNDRweDtcclxuICAgIGJvcmRlci1yYWRpdXM6IDVweDtcclxuICAgIG1hcmdpbi1ib3R0b206IDEwcHg7XHJcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDExOCwgMTU2LCAxNjIsIDAuMTUpO1xyXG4gICAgcGFkZGluZzogNXB4IDEwcHg7XHJcbiAgfVxyXG59XHJcblxyXG4uaXRlbS10ZXh0IHtcclxuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XHJcbiAgaGVpZ2h0OiAyMHB4O1xyXG4gIG1hcmdpbi10b3A6IDdweDtcclxufVxyXG4ucHJvZ3Jlc3MtdGV4dCB7XHJcbiAgZm9udC13ZWlnaHQ6IDUwMDtcclxuICBjb2xvcjogIzc4OWNhMTtcclxufVxyXG4uYWxpZ24tcmlnaHQge1xyXG4gIGZsb2F0OiByaWdodDtcclxuICBtYXJnaW4tbGVmdDogMjVweDtcclxufVxyXG4uY3lhbi1jb2xvciB7XHJcbiAgYmFja2dyb3VuZDogIzc4OWNhMTtcclxuICBjb2xvcjogd2hpdGU7XHJcbiAgb3V0bGluZTogbm9uZTtcclxufVxyXG4iLCIuY2hhcnQge1xuICBoZWlnaHQ6IDgwMHB4O1xufVxuXG4uZm9ybSB7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLm1hcmdpbi1jb250ZW50IHtcbiAgbWFyZ2luLXRvcDogMjBweDtcbn1cblxuLnNlbGVjdCB7XG4gIGJvcmRlcjogMHB4O1xuICBtYXJnaW4tdG9wOiAtM3B4O1xuICBoZWlnaHQ6IDM2cHg7XG4gIG1hcmdpbi1sZWZ0OiAyNXB4O1xufVxuXG4uY2hhcnRXcmFwcGVyIHtcbiAgb3ZlcmZsb3cteDogc2Nyb2xsO1xufVxuXG4uaW5mby1jYXJkIHtcbiAgbWFyZ2luLXRvcDogMTBweDtcbiAgcGFkZGluZzogMTBweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgYm9yZGVyLXJhZGl1czogNXB4O1xuICBtYXgtd2lkdGg6IDI1JTtcbiAgLW1vei1ib3gtc2hhZG93OiAwIDAgOHB4IHJnYmEoMCwgMCwgMCwgMC4yKTtcbiAgLXdlYmtpdC1ib3gtc2hhZG93OiAwIDAgOHB4IHJnYmEoMywgMiwgMiwgMC4yKTtcbiAgYm94LXNoYWRvdzogMCAwIDhweCByZ2JhKDAsIDAsIDAsIDAuMik7XG59XG4uaW5mby1jYXJkIC50aXRsZSB7XG4gIGZvbnQtc2l6ZTogMWVtO1xuICBmb250LXdlaWdodDogNTAwO1xuICBtYXJnaW4tYm90dG9tOiAxMHB4O1xufVxuLmluZm8tY2FyZCAuaXRlbSB7XG4gIGhlaWdodDogNDRweDtcbiAgYm9yZGVyLXJhZGl1czogNXB4O1xuICBtYXJnaW4tYm90dG9tOiAxMHB4O1xuICBiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDExOCwgMTU2LCAxNjIsIDAuMTUpO1xuICBwYWRkaW5nOiA1cHggMTBweDtcbn1cblxuLml0ZW0tdGV4dCB7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgaGVpZ2h0OiAyMHB4O1xuICBtYXJnaW4tdG9wOiA3cHg7XG59XG5cbi5wcm9ncmVzcy10ZXh0IHtcbiAgZm9udC13ZWlnaHQ6IDUwMDtcbiAgY29sb3I6ICM3ODljYTE7XG59XG5cbi5hbGlnbi1yaWdodCB7XG4gIGZsb2F0OiByaWdodDtcbiAgbWFyZ2luLWxlZnQ6IDI1cHg7XG59XG5cbi5jeWFuLWNvbG9yIHtcbiAgYmFja2dyb3VuZDogIzc4OWNhMTtcbiAgY29sb3I6IHdoaXRlO1xuICBvdXRsaW5lOiBub25lO1xufSJdfQ== */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](StatsComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'app-stats',
                templateUrl: './stats.component.html',
                styleUrls: ['./stats.component.scss'],
            }]
    }], function () { return [{ type: _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormBuilder"] }, { type: src_app_api_stats_stats_service__WEBPACK_IMPORTED_MODULE_2__["StatsService"] }]; }, null); })();


/***/ }),

/***/ "./src/app/layout/restricted/stats/stats.module.ts":
/*!*********************************************************!*\
  !*** ./src/app/layout/restricted/stats/stats.module.ts ***!
  \*********************************************************/
/*! exports provided: StatsModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "StatsModule", function() { return StatsModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/__ivy_ngcc__/fesm2015/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/common.js");
/* harmony import */ var _stats_routing_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./stats-routing.module */ "./src/app/layout/restricted/stats/stats-routing.module.ts");
/* harmony import */ var ng2_charts__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ng2-charts */ "./node_modules/ng2-charts/__ivy_ngcc__/fesm2015/ng2-charts.js");
/* harmony import */ var _stats_component__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./stats.component */ "./src/app/layout/restricted/stats/stats.component.ts");
/* harmony import */ var _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @angular/google-maps */ "./node_modules/@angular/google-maps/__ivy_ngcc__/fesm2015/google-maps.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/__ivy_ngcc__/fesm2015/http.js");
/* harmony import */ var src_app_common_material_material_module__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! src/app/common/material/material.module */ "./src/app/common/material/material.module.ts");
/* harmony import */ var angular_svg_round_progressbar__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! angular-svg-round-progressbar */ "./node_modules/angular-svg-round-progressbar/__ivy_ngcc__/fesm2015/angular-svg-round-progressbar.js");
/* harmony import */ var _map_visualization_map_visualization_module__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./map-visualization/map-visualization.module */ "./src/app/layout/restricted/stats/map-visualization/map-visualization.module.ts");
/* harmony import */ var _line_visualization_line_visualization_module__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ./line-visualization/line-visualization.module */ "./src/app/layout/restricted/stats/line-visualization/line-visualization.module.ts");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/__ivy_ngcc__/fesm2015/forms.js");
/* harmony import */ var _map_visualization_map_visualization_component__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! ./map-visualization/map-visualization.component */ "./src/app/layout/restricted/stats/map-visualization/map-visualization.component.ts");
/* harmony import */ var _line_visualization_line_visualization_component__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! ./line-visualization/line-visualization.component */ "./src/app/layout/restricted/stats/line-visualization/line-visualization.component.ts");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_14__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/__ivy_ngcc__/fesm2015/router.js");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_15__ = __webpack_require__(/*! @angular/material/button */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/button.js");
/* harmony import */ var _angular_cdk_bidi__WEBPACK_IMPORTED_MODULE_16__ = __webpack_require__(/*! @angular/cdk/bidi */ "./node_modules/@angular/cdk/__ivy_ngcc__/fesm2015/bidi.js");
/* harmony import */ var _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_17__ = __webpack_require__(/*! @angular/material/checkbox */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/checkbox.js");
/* harmony import */ var _angular_cdk_scrolling__WEBPACK_IMPORTED_MODULE_18__ = __webpack_require__(/*! @angular/cdk/scrolling */ "./node_modules/@angular/cdk/__ivy_ngcc__/fesm2015/scrolling.js");
/* harmony import */ var _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_19__ = __webpack_require__(/*! @angular/material/sidenav */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/sidenav.js");
/* harmony import */ var _angular_material_toolbar__WEBPACK_IMPORTED_MODULE_20__ = __webpack_require__(/*! @angular/material/toolbar */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/toolbar.js");
/* harmony import */ var _angular_material_menu__WEBPACK_IMPORTED_MODULE_21__ = __webpack_require__(/*! @angular/material/menu */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/menu.js");
/* harmony import */ var _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__ = __webpack_require__(/*! @angular/material/form-field */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/form-field.js");
/* harmony import */ var _angular_cdk_text_field__WEBPACK_IMPORTED_MODULE_23__ = __webpack_require__(/*! @angular/cdk/text-field */ "./node_modules/@angular/cdk/__ivy_ngcc__/fesm2015/text-field.js");
/* harmony import */ var _angular_material_input__WEBPACK_IMPORTED_MODULE_24__ = __webpack_require__(/*! @angular/material/input */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/input.js");
/* harmony import */ var _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__ = __webpack_require__(/*! @angular/material/expansion */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/expansion.js");
/* harmony import */ var _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__ = __webpack_require__(/*! @angular/material/datepicker */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/datepicker.js");
/* harmony import */ var _angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_27__ = __webpack_require__(/*! @angular/material/autocomplete */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/autocomplete.js");
/* harmony import */ var _angular_material_core__WEBPACK_IMPORTED_MODULE_28__ = __webpack_require__(/*! @angular/material/core */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/core.js");
/* harmony import */ var _angular_material_radio__WEBPACK_IMPORTED_MODULE_29__ = __webpack_require__(/*! @angular/material/radio */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/radio.js");
/* harmony import */ var _angular_material_select__WEBPACK_IMPORTED_MODULE_30__ = __webpack_require__(/*! @angular/material/select */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/select.js");
/* harmony import */ var _angular_material_sort__WEBPACK_IMPORTED_MODULE_31__ = __webpack_require__(/*! @angular/material/sort */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/sort.js");
/* harmony import */ var _angular_material_table__WEBPACK_IMPORTED_MODULE_32__ = __webpack_require__(/*! @angular/material/table */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/table.js");
/* harmony import */ var _angular_material_paginator__WEBPACK_IMPORTED_MODULE_33__ = __webpack_require__(/*! @angular/material/paginator */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/paginator.js");
/* harmony import */ var _angular_material_icon__WEBPACK_IMPORTED_MODULE_34__ = __webpack_require__(/*! @angular/material/icon */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/icon.js");
/* harmony import */ var _angular_material_divider__WEBPACK_IMPORTED_MODULE_35__ = __webpack_require__(/*! @angular/material/divider */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/divider.js");
/* harmony import */ var _angular_material_slide_toggle__WEBPACK_IMPORTED_MODULE_36__ = __webpack_require__(/*! @angular/material/slide-toggle */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/slide-toggle.js");
/* harmony import */ var _angular_cdk_drag_drop__WEBPACK_IMPORTED_MODULE_37__ = __webpack_require__(/*! @angular/cdk/drag-drop */ "./node_modules/@angular/cdk/__ivy_ngcc__/fesm2015/drag-drop.js");
/* harmony import */ var _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__ = __webpack_require__(/*! @angular/material/stepper */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/stepper.js");
/* harmony import */ var _angular_material_tooltip__WEBPACK_IMPORTED_MODULE_39__ = __webpack_require__(/*! @angular/material/tooltip */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/tooltip.js");
/* harmony import */ var _angular_material_progress_spinner__WEBPACK_IMPORTED_MODULE_40__ = __webpack_require__(/*! @angular/material/progress-spinner */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/progress-spinner.js");
/* harmony import */ var _angular_material_progress_bar__WEBPACK_IMPORTED_MODULE_41__ = __webpack_require__(/*! @angular/material/progress-bar */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/progress-bar.js");
/* harmony import */ var _angular_material_tabs__WEBPACK_IMPORTED_MODULE_42__ = __webpack_require__(/*! @angular/material/tabs */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/tabs.js");
/* harmony import */ var _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__ = __webpack_require__(/*! @angular/material/tree */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/tree.js");
/* harmony import */ var _angular_material_dialog__WEBPACK_IMPORTED_MODULE_44__ = __webpack_require__(/*! @angular/material/dialog */ "./node_modules/@angular/material/__ivy_ngcc__/fesm2015/dialog.js");
/* harmony import */ var angular_google_charts__WEBPACK_IMPORTED_MODULE_45__ = __webpack_require__(/*! angular-google-charts */ "./node_modules/angular-google-charts/__ivy_ngcc__/fesm2015/angular-google-charts.js");




















































class StatsModule {
}
StatsModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineNgModule"]({ type: StatsModule });
StatsModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjector"]({ factory: function StatsModule_Factory(t) { return new (t || StatsModule)(); }, imports: [[
            _angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormsModule"],
            _angular_forms__WEBPACK_IMPORTED_MODULE_11__["ReactiveFormsModule"],
            _map_visualization_map_visualization_module__WEBPACK_IMPORTED_MODULE_9__["MapVisualizationModule"],
            _line_visualization_line_visualization_module__WEBPACK_IMPORTED_MODULE_10__["LineVisualizationModule"],
            _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
            _stats_routing_module__WEBPACK_IMPORTED_MODULE_2__["StatsRoutingModule"],
            ng2_charts__WEBPACK_IMPORTED_MODULE_3__["ChartsModule"],
            _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["GoogleMapsModule"],
            _angular_common_http__WEBPACK_IMPORTED_MODULE_6__["HttpClientModule"],
            _angular_common_http__WEBPACK_IMPORTED_MODULE_6__["HttpClientJsonpModule"],
            src_app_common_material_material_module__WEBPACK_IMPORTED_MODULE_7__["MaterialModule"],
            angular_svg_round_progressbar__WEBPACK_IMPORTED_MODULE_8__["RoundProgressModule"]
        ]] });
(function () { (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsetNgModuleScope"](StatsModule, { declarations: [_stats_component__WEBPACK_IMPORTED_MODULE_4__["StatsComponent"]], imports: [_angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormsModule"],
        _angular_forms__WEBPACK_IMPORTED_MODULE_11__["ReactiveFormsModule"],
        _map_visualization_map_visualization_module__WEBPACK_IMPORTED_MODULE_9__["MapVisualizationModule"],
        _line_visualization_line_visualization_module__WEBPACK_IMPORTED_MODULE_10__["LineVisualizationModule"],
        _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
        _stats_routing_module__WEBPACK_IMPORTED_MODULE_2__["StatsRoutingModule"],
        ng2_charts__WEBPACK_IMPORTED_MODULE_3__["ChartsModule"],
        _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["GoogleMapsModule"],
        _angular_common_http__WEBPACK_IMPORTED_MODULE_6__["HttpClientModule"],
        _angular_common_http__WEBPACK_IMPORTED_MODULE_6__["HttpClientJsonpModule"],
        src_app_common_material_material_module__WEBPACK_IMPORTED_MODULE_7__["MaterialModule"],
        angular_svg_round_progressbar__WEBPACK_IMPORTED_MODULE_8__["RoundProgressModule"]] }); })();
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](StatsModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"],
        args: [{
                declarations: [
                    _stats_component__WEBPACK_IMPORTED_MODULE_4__["StatsComponent"],
                ],
                imports: [
                    _angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormsModule"],
                    _angular_forms__WEBPACK_IMPORTED_MODULE_11__["ReactiveFormsModule"],
                    _map_visualization_map_visualization_module__WEBPACK_IMPORTED_MODULE_9__["MapVisualizationModule"],
                    _line_visualization_line_visualization_module__WEBPACK_IMPORTED_MODULE_10__["LineVisualizationModule"],
                    _angular_common__WEBPACK_IMPORTED_MODULE_1__["CommonModule"],
                    _stats_routing_module__WEBPACK_IMPORTED_MODULE_2__["StatsRoutingModule"],
                    ng2_charts__WEBPACK_IMPORTED_MODULE_3__["ChartsModule"],
                    _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["GoogleMapsModule"],
                    _angular_common_http__WEBPACK_IMPORTED_MODULE_6__["HttpClientModule"],
                    _angular_common_http__WEBPACK_IMPORTED_MODULE_6__["HttpClientJsonpModule"],
                    src_app_common_material_material_module__WEBPACK_IMPORTED_MODULE_7__["MaterialModule"],
                    angular_svg_round_progressbar__WEBPACK_IMPORTED_MODULE_8__["RoundProgressModule"]
                ],
            }]
    }], null, null); })();
_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsetComponentScope"](_stats_component__WEBPACK_IMPORTED_MODULE_4__["StatsComponent"], [_angular_forms__WEBPACK_IMPORTED_MODULE_11__["ɵangular_packages_forms_forms_y"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["NgSelectOption"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["ɵangular_packages_forms_forms_x"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["DefaultValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["NumberValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["RangeValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["CheckboxControlValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["SelectControlValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["SelectMultipleControlValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["RadioControlValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["NgControlStatus"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["NgControlStatusGroup"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["RequiredValidator"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["MinLengthValidator"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["MaxLengthValidator"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["PatternValidator"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["CheckboxRequiredValidator"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["EmailValidator"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["NgModel"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["NgModelGroup"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["NgForm"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormControlDirective"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormGroupDirective"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormControlName"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormGroupName"], _angular_forms__WEBPACK_IMPORTED_MODULE_11__["FormArrayName"], _map_visualization_map_visualization_component__WEBPACK_IMPORTED_MODULE_12__["MapVisualizationComponent"], _line_visualization_line_visualization_component__WEBPACK_IMPORTED_MODULE_13__["LineVisualizationComponent"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgClass"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgComponentOutlet"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgForOf"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgIf"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgTemplateOutlet"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgStyle"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgSwitch"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgSwitchCase"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgSwitchDefault"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgPlural"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["NgPluralCase"], _angular_router__WEBPACK_IMPORTED_MODULE_14__["RouterOutlet"], _angular_router__WEBPACK_IMPORTED_MODULE_14__["RouterLink"], _angular_router__WEBPACK_IMPORTED_MODULE_14__["RouterLinkWithHref"], _angular_router__WEBPACK_IMPORTED_MODULE_14__["RouterLinkActive"], _angular_router__WEBPACK_IMPORTED_MODULE_14__["ɵangular_packages_router_router_l"], ng2_charts__WEBPACK_IMPORTED_MODULE_3__["BaseChartDirective"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["GoogleMap"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapBaseLayer"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapBicyclingLayer"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapCircle"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapGroundOverlay"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapInfoWindow"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapKmlLayer"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapMarker"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapMarkerClusterer"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapPolygon"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapPolyline"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapRectangle"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapTrafficLayer"], _angular_google_maps__WEBPACK_IMPORTED_MODULE_5__["MapTransitLayer"], _angular_material_button__WEBPACK_IMPORTED_MODULE_15__["MatButton"], _angular_material_button__WEBPACK_IMPORTED_MODULE_15__["MatAnchor"], _angular_cdk_bidi__WEBPACK_IMPORTED_MODULE_16__["Dir"], _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_17__["MatCheckbox"], _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_17__["MatCheckboxRequiredValidator"], _angular_cdk_scrolling__WEBPACK_IMPORTED_MODULE_18__["CdkScrollable"], _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_19__["MatDrawer"], _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_19__["MatDrawerContainer"], _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_19__["MatDrawerContent"], _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_19__["MatSidenav"], _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_19__["MatSidenavContainer"], _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_19__["MatSidenavContent"], _angular_material_toolbar__WEBPACK_IMPORTED_MODULE_20__["MatToolbar"], _angular_material_toolbar__WEBPACK_IMPORTED_MODULE_20__["MatToolbarRow"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_21__["_MatMenu"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_21__["MatMenuItem"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_21__["MatMenuTrigger"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_21__["MatMenuContent"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__["MatError"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__["MatFormField"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__["MatHint"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__["MatLabel"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__["MatPlaceholder"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__["MatPrefix"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_22__["MatSuffix"], _angular_cdk_text_field__WEBPACK_IMPORTED_MODULE_23__["CdkAutofill"], _angular_cdk_text_field__WEBPACK_IMPORTED_MODULE_23__["CdkTextareaAutosize"], _angular_material_input__WEBPACK_IMPORTED_MODULE_24__["MatInput"], _angular_material_input__WEBPACK_IMPORTED_MODULE_24__["MatTextareaAutosize"], _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__["MatAccordion"], _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__["MatExpansionPanel"], _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__["MatExpansionPanelActionRow"], _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__["MatExpansionPanelHeader"], _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__["MatExpansionPanelTitle"], _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__["MatExpansionPanelDescription"], _angular_material_expansion__WEBPACK_IMPORTED_MODULE_25__["MatExpansionPanelContent"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatCalendar"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatCalendarBody"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatDatepicker"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatDatepickerContent"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatDatepickerInput"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatDatepickerToggle"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatDatepickerToggleIcon"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatMonthView"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatYearView"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatMultiYearView"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_26__["MatCalendarHeader"], _angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_27__["MatAutocomplete"], _angular_material_core__WEBPACK_IMPORTED_MODULE_28__["MatOption"], _angular_material_core__WEBPACK_IMPORTED_MODULE_28__["MatOptgroup"], _angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_27__["MatAutocompleteTrigger"], _angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_27__["MatAutocompleteOrigin"], _angular_material_radio__WEBPACK_IMPORTED_MODULE_29__["MatRadioGroup"], _angular_material_radio__WEBPACK_IMPORTED_MODULE_29__["MatRadioButton"], _angular_material_select__WEBPACK_IMPORTED_MODULE_30__["MatSelect"], _angular_material_select__WEBPACK_IMPORTED_MODULE_30__["MatSelectTrigger"], _angular_material_sort__WEBPACK_IMPORTED_MODULE_31__["MatSort"], _angular_material_sort__WEBPACK_IMPORTED_MODULE_31__["MatSortHeader"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatTable"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatHeaderCellDef"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatHeaderRowDef"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatColumnDef"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatCellDef"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatRowDef"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatFooterCellDef"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatFooterRowDef"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatHeaderCell"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatCell"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatFooterCell"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatHeaderRow"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatRow"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatFooterRow"], _angular_material_table__WEBPACK_IMPORTED_MODULE_32__["MatTextColumn"], _angular_material_paginator__WEBPACK_IMPORTED_MODULE_33__["MatPaginator"], _angular_material_icon__WEBPACK_IMPORTED_MODULE_34__["MatIcon"], _angular_material_divider__WEBPACK_IMPORTED_MODULE_35__["MatDivider"], _angular_material_slide_toggle__WEBPACK_IMPORTED_MODULE_36__["MatSlideToggleRequiredValidator"], _angular_material_slide_toggle__WEBPACK_IMPORTED_MODULE_36__["MatSlideToggle"], _angular_cdk_drag_drop__WEBPACK_IMPORTED_MODULE_37__["CdkDropList"], _angular_cdk_drag_drop__WEBPACK_IMPORTED_MODULE_37__["CdkDropListGroup"], _angular_cdk_drag_drop__WEBPACK_IMPORTED_MODULE_37__["CdkDrag"], _angular_cdk_drag_drop__WEBPACK_IMPORTED_MODULE_37__["CdkDragHandle"], _angular_cdk_drag_drop__WEBPACK_IMPORTED_MODULE_37__["CdkDragPreview"], _angular_cdk_drag_drop__WEBPACK_IMPORTED_MODULE_37__["CdkDragPlaceholder"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatHorizontalStepper"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatVerticalStepper"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatStep"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatStepLabel"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatStepper"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatStepperNext"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatStepperPrevious"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatStepHeader"], _angular_material_stepper__WEBPACK_IMPORTED_MODULE_38__["MatStepperIcon"], _angular_material_tooltip__WEBPACK_IMPORTED_MODULE_39__["MatTooltip"], _angular_material_tooltip__WEBPACK_IMPORTED_MODULE_39__["TooltipComponent"], _angular_material_progress_spinner__WEBPACK_IMPORTED_MODULE_40__["MatProgressSpinner"], _angular_material_progress_spinner__WEBPACK_IMPORTED_MODULE_40__["MatSpinner"], _angular_material_progress_bar__WEBPACK_IMPORTED_MODULE_41__["MatProgressBar"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_42__["MatTabGroup"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_42__["MatTabLabel"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_42__["MatTab"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_42__["MatTabNav"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_42__["MatTabLink"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_42__["MatTabContent"], _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__["MatNestedTreeNode"], _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__["MatTreeNodeDef"], _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__["MatTreeNodePadding"], _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__["MatTreeNodeToggle"], _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__["MatTree"], _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__["MatTreeNode"], _angular_material_tree__WEBPACK_IMPORTED_MODULE_43__["MatTreeNodeOutlet"], _angular_material_dialog__WEBPACK_IMPORTED_MODULE_44__["MatDialogContainer"], _angular_material_dialog__WEBPACK_IMPORTED_MODULE_44__["MatDialogClose"], _angular_material_dialog__WEBPACK_IMPORTED_MODULE_44__["MatDialogTitle"], _angular_material_dialog__WEBPACK_IMPORTED_MODULE_44__["MatDialogContent"], _angular_material_dialog__WEBPACK_IMPORTED_MODULE_44__["MatDialogActions"], angular_google_charts__WEBPACK_IMPORTED_MODULE_45__["GoogleChartComponent"], angular_google_charts__WEBPACK_IMPORTED_MODULE_45__["ChartWrapperComponent"], angular_google_charts__WEBPACK_IMPORTED_MODULE_45__["DashboardComponent"], angular_google_charts__WEBPACK_IMPORTED_MODULE_45__["ControlWrapperComponent"], angular_google_charts__WEBPACK_IMPORTED_MODULE_45__["ChartEditorComponent"], angular_svg_round_progressbar__WEBPACK_IMPORTED_MODULE_8__["RoundProgressComponent"], _stats_component__WEBPACK_IMPORTED_MODULE_4__["StatsComponent"]], [_angular_common__WEBPACK_IMPORTED_MODULE_1__["AsyncPipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["UpperCasePipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["LowerCasePipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["JsonPipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["SlicePipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["DecimalPipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["PercentPipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["TitleCasePipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["CurrencyPipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["DatePipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["I18nPluralPipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["I18nSelectPipe"], _angular_common__WEBPACK_IMPORTED_MODULE_1__["KeyValuePipe"]]);


/***/ })

}]);
//# sourceMappingURL=restricted-stats-stats-module-es2015.js.map