{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 7
		}
,
		"rect" : [ 355.0, 242.0, 646.0, 383.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Anonymous Pro",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 5.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Anonymous Pro",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 160.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 525.0, 145.0, 60.0, 20.0 ],
					"text" : "Rows:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Anonymous Pro",
					"fontsize" : 14.0,
					"id" : "obj-6",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.0, 160.0, 53.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 570.0, 145.0, 60.0, 20.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Anonymous Pro",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, 5.0, 63.0, 18.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Query", "query" ],
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "msql.Prompt.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -15.0, -15.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 125.0, 555.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 90.0, 615.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Password", "password", 1 ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "msql.Prompt.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -15.0, -15.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 100.0, 555.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 65.0, 615.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Username", "username" ],
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "msql.Prompt.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -15.0, -15.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 75.0, 555.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 40.0, 615.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "Host", "host" ],
					"id" : "obj-30",
					"maxclass" : "bpatcher",
					"name" : "msql.Prompt.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -15.0, -15.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 50.0, 555.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 615.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"colhead" : 1,
					"colwidth" : 200,
					"fontname" : "Anonymous Pro",
					"fontsize" : 12.0,
					"hscroll" : 0,
					"id" : "obj-2",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 15.0, 245.0, 615.0, 125.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 170.0, 615.0, 200.0 ],
					"rows" : 100
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Anonymous Pro",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 30.0, 122.0, 16.0 ],
					"text" : "run max-msql-main"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Anonymous Pro",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 15.0, 215.0, 430.0, 18.0 ],
					"text" : "mxj net.loadbang.mxj.Clojure 1 3 @placeholder maxmsp-clojure-sql"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 84.5, 154.5, 24.5, 154.5 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 84.5, 167.0, 24.5, 167.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 84.5, 179.5, 24.5, 179.5 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 84.5, 192.0, 24.5, 192.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "msql.Prompt.maxpat",
				"bootpath" : "/Users/nick/CASSIEL-GIT/cassiel/maxmsp-clojure-sql/patchers/msql/patchers",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
