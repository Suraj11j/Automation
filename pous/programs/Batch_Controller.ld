PROGRAM Batch_Controller
  VAR_EXTERNAL
    Safety_OK : BOOL;
    Level : REAL;
    Temperature : REAL;
    Pressure : REAL;
    Weight : REAL;
    Ingredient_A_Request : BOOL;
    Ingredient_B_Request : BOOL;
    Discharge_Request : BOOL;
    Packaging_Request : BOOL;
    Mixer_Request : BOOL;
    Batch_State_Code : INT;
    Batch : ST_BATCH;
  END_VAR
  VAR
    Batch_Start : BOOL;
    Batch_Stop : BOOL;
    Batch_Reset : BOOL;
    Fill_A_Active : BOOL;
    Fill_A_Done : BOOL;
    Fill_B_Active : BOOL;
    Fill_B_Done : BOOL;
    Batch_Target : REAL;
    Mix_Active : BOOL;
    Mix_Done : BOOL;
    Mix_Timer : TON;
    Discharge_Active : BOOL;
    Discharge_Done : BOOL;
    Packaging_Active : BOOL;
    Packaging_Done : BOOL;
    Packaging_Timer : TON;
    Batch_Complete : BOOL;
    Batch_Start_Trig : R_TRIG;
  END_VAR

{
  "name": "Batch_Controller",
  "rungs": [
    {
      "id": "rung_Batch_Controller_2fbd3c34-4d88-4b7e-9fe3-a4591b09f67b",
      "comment": "Batch Reset Initailize",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        850,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_2fbd3c34-4d88-4b7e-9fe3-a4591b09f67b",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "4358215",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_c3791074-93e5-4971-8d69-f8b451a575bd",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6442263",
            "variable": {
              "id": "",
              "name": "Batch_Reset",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_c9bf8553-e57a-41ed-bc99-24e3888cb8b4",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1849988",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 587,
                "y": 50
              },
              "relPosition": {
                "x": 216,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "9564944",
            "variant": {
              "name": "State_Transition",
              "type": "function",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Current_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Required_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Next_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "documentation": "",
              "extensible": false
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "Current_State",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Required_State",
                "type": "input",
                "variable": {
                  "name": "6"
                }
              },
              {
                "handleId": "Next_State",
                "type": "input",
                "variable": {
                  "name": "0"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 216,
          "height": 180,
          "measured": {
            "width": 216,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_2fbd3c34-4d88-4b7e-9fe3-a4591b09f67b",
          "type": "powerRail",
          "position": {
            "x": 847,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 847
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "9211609",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_a65e1726-75d3-479e-87da-f26a874d4a7c",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "7313437",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
              "handleId": "Current_State",
              "variableType": {
                "name": "Current_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_feb588bf-8c6c-4445-b750-bdefaaf587b5",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "7660962",
            "variable": {
              "name": "6"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
              "handleId": "Required_State",
              "variableType": {
                "name": "Required_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b9b44e15-0d4a-4c85-810d-0aef77fd4cad",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8839569",
            "variable": {
              "name": "0"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
              "handleId": "Next_State",
              "variableType": {
                "name": "Next_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_25dcc704-ffb9-4b46-9251-97b6f61dc3b8",
          "type": "variable",
          "position": {
            "x": 617,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 617,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "8943982",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_CONTACT_c9bf8553-e57a-41ed-bc99-24e3888cb8b4_BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61__output_???",
          "source": "CONTACT_c9bf8553-e57a-41ed-bc99-24e3888cb8b4",
          "target": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61_right-rail-rung_Batch_Controller_2fbd3c34-4d88-4b7e-9fe3-a4591b09f67b__???_right-rail",
          "source": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
          "target": "right-rail-rung_Batch_Controller_2fbd3c34-4d88-4b7e-9fe3-a4591b09f67b",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_Batch_Controller_2fbd3c34-4d88-4b7e-9fe3-a4591b09f67b_CONTACT_c3791074-93e5-4971-8d69-f8b451a575bd__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_2fbd3c34-4d88-4b7e-9fe3-a4591b09f67b",
          "target": "CONTACT_c3791074-93e5-4971-8d69-f8b451a575bd",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_c3791074-93e5-4971-8d69-f8b451a575bd_CONTACT_c9bf8553-e57a-41ed-bc99-24e3888cb8b4__output_input",
          "source": "CONTACT_c3791074-93e5-4971-8d69-f8b451a575bd",
          "target": "CONTACT_c9bf8553-e57a-41ed-bc99-24e3888cb8b4",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_VARIABLE_a65e1726-75d3-479e-87da-f26a874d4a7c_BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61__output_Current_State",
          "source": "VARIABLE_a65e1726-75d3-479e-87da-f26a874d4a7c",
          "target": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
          "sourceHandle": "output",
          "targetHandle": "Current_State"
        },
        {
          "id": "e_VARIABLE_feb588bf-8c6c-4445-b750-bdefaaf587b5_BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61__output_Required_State",
          "source": "VARIABLE_feb588bf-8c6c-4445-b750-bdefaaf587b5",
          "target": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
          "sourceHandle": "output",
          "targetHandle": "Required_State"
        },
        {
          "id": "e_VARIABLE_b9b44e15-0d4a-4c85-810d-0aef77fd4cad_BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61__output_Next_State",
          "source": "VARIABLE_b9b44e15-0d4a-4c85-810d-0aef77fd4cad",
          "target": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
          "sourceHandle": "output",
          "targetHandle": "Next_State"
        },
        {
          "id": "e_BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61_VARIABLE_25dcc704-ffb9-4b46-9251-97b6f61dc3b8__OUT_input",
          "source": "BLOCK_a8485118-b24e-4b9a-9383-04dd47f01a61",
          "target": "VARIABLE_25dcc704-ffb9-4b46-9251-97b6f61dc3b8",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_b30eb93d-2124-41ea-960d-184b253bb458",
      "comment": "Fill A initilaze",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        1492,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_b30eb93d-2124-41ea-960d-184b253bb458",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "6444658",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_344d3a0d-cc91-4b13-8e48-cdf60a004372",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2738504",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_70a0de19-0cca-44b7-a2a7-6bea2d13080c",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7846357",
            "variable": {
              "id": "",
              "name": "Batch_Start",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 587,
                "y": 50
              },
              "relPosition": {
                "x": 216,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6193647",
            "variant": {
              "name": "State_Transition",
              "documentation": "",
              "type": "function",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "documentation": "",
                  "debug": false
                },
                {
                  "name": "Current_State",
                  "class": "input",
                  "type": {
                    "value": "INT",
                    "definition": "base-type"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                },
                {
                  "name": "Required_State",
                  "class": "input",
                  "type": {
                    "value": "INT",
                    "definition": "base-type"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                },
                {
                  "name": "Next_State",
                  "class": "input",
                  "type": {
                    "value": "INT",
                    "definition": "base-type"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              ]
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "Current_State",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Required_State",
                "type": "input",
                "variable": {
                  "name": "0"
                }
              },
              {
                "handleId": "Next_State",
                "type": "input",
                "variable": {
                  "name": "1"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 216,
          "height": 180,
          "measured": {
            "width": 216,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_fef00f2a-2843-45a2-8940-2e009bf6ebca",
          "type": "block",
          "position": {
            "x": 827,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 827,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "CLK",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 899,
                  "y": 50
                },
                "relPosition": {
                  "x": 72,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 827,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "CLK",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 899,
                  "y": 50
                },
                "relPosition": {
                  "x": 72,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 827,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "CLK",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 899,
                "y": 50
              },
              "relPosition": {
                "x": 72,
                "y": 36
              },
              "id": "Q",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "4425253",
            "variant": {
              "name": "R_TRIG",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "CLK",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                }
              ],
              "body": "",
              "documentation": "The output produces a single pulse when a rising edge is detected."
            },
            "variable": {
              "name": "Batch_Start_Trig"
            },
            "executionOrder": 0,
            "executionControl": false,
            "lockExecutionControl": false,
            "connectedVariables": [],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 72,
          "height": 60,
          "measured": {
            "width": 72,
            "height": 60
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
          "type": "block",
          "position": {
            "x": 1139,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 1139,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 1139,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 1139,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 1229,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 1229,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 1139,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 1139,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 1139,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 1229,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 1229,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 1139,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 1229,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "5368047",
            "variant": {
              "name": "ADD",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_NUM"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_NUM"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_NUM"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Arithmetic"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "1"
                }
              },
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Batch.Batch_ID"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch.Batch_ID"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_b30eb93d-2124-41ea-960d-184b253bb458",
          "type": "powerRail",
          "position": {
            "x": 1489,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 1489
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "3617089",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_9ed77929-b90f-4627-b251-de0146e37689",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5474294",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
              "handleId": "Current_State",
              "variableType": {
                "name": "Current_State",
                "class": "input",
                "type": {
                  "value": "INT",
                  "definition": "base-type"
                },
                "location": "",
                "initialValue": null,
                "documentation": "",
                "debug": false
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_90249c73-7f03-40b5-ab25-75c346573da0",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8019614",
            "variable": {
              "name": "0"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
              "handleId": "Required_State",
              "variableType": {
                "name": "Required_State",
                "class": "input",
                "type": {
                  "value": "INT",
                  "definition": "base-type"
                },
                "location": "",
                "initialValue": null,
                "documentation": "",
                "debug": false
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_07e22e88-2b6e-4ad8-9737-b26dbbf8eca8",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "3402826",
            "variable": {
              "name": "1"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
              "handleId": "Next_State",
              "variableType": {
                "name": "Next_State",
                "class": "input",
                "type": {
                  "value": "INT",
                  "definition": "base-type"
                },
                "location": "",
                "initialValue": null,
                "documentation": "",
                "debug": false
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_8ef984b9-18e4-4ba5-b5cb-dd13e93a3591",
          "type": "variable",
          "position": {
            "x": 617,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 617,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "8869224",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                },
                "location": "",
                "documentation": "",
                "debug": false
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_1e4a570f-11a2-40dc-ae6a-92b4238bec71",
          "type": "variable",
          "position": {
            "x": 1029,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 1189,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 1189,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 1189,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "6093111",
            "variable": {
              "name": "Batch.Batch_ID"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_NUM"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_49734e90-f3b2-4d15-8f39-91d01527147f",
          "type": "variable",
          "position": {
            "x": 1029,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 1189,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 1189,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 1189,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "4937986",
            "variable": {
              "name": "1"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_NUM"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_580ba1e0-e3b7-4af8-b8e5-35c541b8362e",
          "type": "variable",
          "position": {
            "x": 1259,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 1259,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 1259,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 1259,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "3180391",
            "variable": {
              "name": "Batch.Batch_ID"
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_NUM"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_b30eb93d-2124-41ea-960d-184b253bb458_CONTACT_344d3a0d-cc91-4b13-8e48-cdf60a004372__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_b30eb93d-2124-41ea-960d-184b253bb458",
          "target": "CONTACT_344d3a0d-cc91-4b13-8e48-cdf60a004372",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_344d3a0d-cc91-4b13-8e48-cdf60a004372_CONTACT_70a0de19-0cca-44b7-a2a7-6bea2d13080c__output_input",
          "source": "CONTACT_344d3a0d-cc91-4b13-8e48-cdf60a004372",
          "target": "CONTACT_70a0de19-0cca-44b7-a2a7-6bea2d13080c",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_BLOCK_53479079-7f07-41ee-b527-2941e77cd088_BLOCK_fef00f2a-2843-45a2-8940-2e009bf6ebca__ENO_CLK",
          "source": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
          "target": "BLOCK_fef00f2a-2843-45a2-8940-2e009bf6ebca",
          "sourceHandle": "ENO",
          "targetHandle": "CLK"
        },
        {
          "id": "e_CONTACT_70a0de19-0cca-44b7-a2a7-6bea2d13080c_BLOCK_53479079-7f07-41ee-b527-2941e77cd088__output_EN",
          "source": "CONTACT_70a0de19-0cca-44b7-a2a7-6bea2d13080c",
          "target": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_fef00f2a-2843-45a2-8940-2e009bf6ebca_BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93__Q_???",
          "source": "BLOCK_fef00f2a-2843-45a2-8940-2e009bf6ebca",
          "target": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
          "sourceHandle": "Q",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93_right-rail-rung_Batch_Controller_b30eb93d-2124-41ea-960d-184b253bb458__???_right-rail",
          "source": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
          "target": "right-rail-rung_Batch_Controller_b30eb93d-2124-41ea-960d-184b253bb458",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_9ed77929-b90f-4627-b251-de0146e37689_BLOCK_53479079-7f07-41ee-b527-2941e77cd088__output_Current_State",
          "source": "VARIABLE_9ed77929-b90f-4627-b251-de0146e37689",
          "target": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
          "sourceHandle": "output",
          "targetHandle": "Current_State"
        },
        {
          "id": "e_VARIABLE_90249c73-7f03-40b5-ab25-75c346573da0_BLOCK_53479079-7f07-41ee-b527-2941e77cd088__output_Required_State",
          "source": "VARIABLE_90249c73-7f03-40b5-ab25-75c346573da0",
          "target": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
          "sourceHandle": "output",
          "targetHandle": "Required_State"
        },
        {
          "id": "e_VARIABLE_07e22e88-2b6e-4ad8-9737-b26dbbf8eca8_BLOCK_53479079-7f07-41ee-b527-2941e77cd088__output_Next_State",
          "source": "VARIABLE_07e22e88-2b6e-4ad8-9737-b26dbbf8eca8",
          "target": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
          "sourceHandle": "output",
          "targetHandle": "Next_State"
        },
        {
          "id": "e_BLOCK_53479079-7f07-41ee-b527-2941e77cd088_VARIABLE_8ef984b9-18e4-4ba5-b5cb-dd13e93a3591__OUT_input",
          "source": "BLOCK_53479079-7f07-41ee-b527-2941e77cd088",
          "target": "VARIABLE_8ef984b9-18e4-4ba5-b5cb-dd13e93a3591",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        },
        {
          "id": "e_VARIABLE_1e4a570f-11a2-40dc-ae6a-92b4238bec71_BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93__output_IN1",
          "source": "VARIABLE_1e4a570f-11a2-40dc-ae6a-92b4238bec71",
          "target": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_49734e90-f3b2-4d15-8f39-91d01527147f_BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93__output_IN2",
          "source": "VARIABLE_49734e90-f3b2-4d15-8f39-91d01527147f",
          "target": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93_VARIABLE_580ba1e0-e3b7-4af8-b8e5-35c541b8362e__OUT_input",
          "source": "BLOCK_0fdd050e-a7a1-42db-b01a-7b64da1f7f93",
          "target": "VARIABLE_580ba1e0-e3b7-4af8-b8e5-35c541b8362e",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
      "comment": "Start Filling A",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "3817338",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6148451",
            "variant": {
              "name": "EQ",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "1"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Fill_A_Active",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 536
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "4646417",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_74385111-10e1-4eb8-900d-05787893a70a",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "2000733",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_8e45b57e-2db5-4a6d-a105-a39a315c7379",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5618885",
            "variable": {
              "name": "1"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b3327c9a-2e32-4577-9cef-cfb38d018121",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "8456135",
            "variable": {
              "name": "Fill_A_Active",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78_BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579__left-rail_???",
          "source": "left-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "target": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579_right-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78__???_right-rail",
          "source": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
          "target": "right-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_74385111-10e1-4eb8-900d-05787893a70a_BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579__output_IN1",
          "source": "VARIABLE_74385111-10e1-4eb8-900d-05787893a70a",
          "target": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_8e45b57e-2db5-4a6d-a105-a39a315c7379_BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579__output_IN2",
          "source": "VARIABLE_8e45b57e-2db5-4a6d-a105-a39a315c7379",
          "target": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579_VARIABLE_b3327c9a-2e32-4577-9cef-cfb38d018121__OUT_input",
          "source": "BLOCK_88fe7218-34d5-417d-8c83-45f7fe1b1579",
          "target": "VARIABLE_b3327c9a-2e32-4577-9cef-cfb38d018121",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
      "comment": "Filling A",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        437,
        120
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "7356836",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_21c7a4b0-67f1-47ce-86dd-ea2f69e118ad",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9616755",
            "variable": {
              "id": "",
              "name": "Fill_A_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_af39d777-deee-4261-bd73-c0de16f564ec",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7338476",
            "variable": {
              "id": "",
              "name": "Fill_A_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_7ddf216b-6314-482c-81e2-34ee905cdc63",
          "type": "coil",
          "position": {
            "x": 296,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 324,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1068634",
            "variable": {
              "id": "",
              "name": "Ingredient_A_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "type": "powerRail",
          "position": {
            "x": 434,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 434
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "3267596",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c_CONTACT_21c7a4b0-67f1-47ce-86dd-ea2f69e118ad__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "target": "CONTACT_21c7a4b0-67f1-47ce-86dd-ea2f69e118ad",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_21c7a4b0-67f1-47ce-86dd-ea2f69e118ad_CONTACT_af39d777-deee-4261-bd73-c0de16f564ec__output_input",
          "source": "CONTACT_21c7a4b0-67f1-47ce-86dd-ea2f69e118ad",
          "target": "CONTACT_af39d777-deee-4261-bd73-c0de16f564ec",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_af39d777-deee-4261-bd73-c0de16f564ec_COIL_7ddf216b-6314-482c-81e2-34ee905cdc63__output_input",
          "source": "CONTACT_af39d777-deee-4261-bd73-c0de16f564ec",
          "target": "COIL_7ddf216b-6314-482c-81e2-34ee905cdc63",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_7ddf216b-6314-482c-81e2-34ee905cdc63_right-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c__output_right-rail",
          "source": "COIL_7ddf216b-6314-482c-81e2-34ee905cdc63",
          "target": "right-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
      "comment": "Filled A",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "7494140",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "10244541",
            "variant": {
              "name": "GE",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Weight"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Fill_A_Done",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "Batch.Ingredient_A"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "8161872",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_5bfa06d2-a8a5-435f-b94a-bbd4e94499d7",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8955969",
            "variable": {
              "name": "Weight"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_d1b2563e-55e7-482b-9f05-cc1023281b35",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "2718606",
            "variable": {
              "name": "Batch.Ingredient_A"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_c8817739-c8e9-4de2-a94c-fcc217c4efbd",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "3740281",
            "variable": {
              "name": "Fill_A_Done",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7_right-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22__OUT_right-rail",
          "source": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
          "target": "right-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22_BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7__left-rail_EN",
          "source": "left-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "target": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_5bfa06d2-a8a5-435f-b94a-bbd4e94499d7_BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7__output_IN1",
          "source": "VARIABLE_5bfa06d2-a8a5-435f-b94a-bbd4e94499d7",
          "target": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_d1b2563e-55e7-482b-9f05-cc1023281b35_BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7__output_IN2",
          "source": "VARIABLE_d1b2563e-55e7-482b-9f05-cc1023281b35",
          "target": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7_VARIABLE_c8817739-c8e9-4de2-a94c-fcc217c4efbd__OUT_input",
          "source": "BLOCK_2f7585fe-324f-4b0e-83d8-d6f3b4e24ee7",
          "target": "VARIABLE_c8817739-c8e9-4de2-a94c-fcc217c4efbd",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_9e74fcb3-375c-4c34-ac10-467f5f1449fa",
      "comment": "Fill B initilize",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        850,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_9e74fcb3-375c-4c34-ac10-467f5f1449fa",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "1802323",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_882cdedb-4929-4eb2-8be1-a1e3d19301d9",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "712623",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_9c9a583d-7582-4bc6-8be3-763bb2db0ae9",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2533291",
            "variable": {
              "id": "",
              "name": "Fill_A_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 587,
                "y": 50
              },
              "relPosition": {
                "x": 216,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6829591",
            "variant": {
              "name": "State_Transition",
              "type": "function",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Current_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Required_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Next_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "documentation": "",
              "extensible": false
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "Current_State",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Required_State",
                "type": "input",
                "variable": {
                  "name": "1"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Next_State",
                "type": "input",
                "variable": {
                  "name": "2"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 216,
          "height": 180,
          "measured": {
            "width": 216,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_9e74fcb3-375c-4c34-ac10-467f5f1449fa",
          "type": "powerRail",
          "position": {
            "x": 847,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 847
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "5739784",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_9767d178-ad00-4ea6-a834-95046e28da53",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "1777698",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
              "handleId": "Current_State",
              "variableType": {
                "name": "Current_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_ef02eb65-a523-4a10-b0cb-058b49f43894",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5095166",
            "variable": {
              "name": "1"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
              "handleId": "Required_State",
              "variableType": {
                "name": "Required_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_3f9fdab4-1d6c-437b-955c-2f0417e56e8b",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "9735330",
            "variable": {
              "name": "2"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
              "handleId": "Next_State",
              "variableType": {
                "name": "Next_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_a1db439f-e66e-4d7a-92e8-e0d082647e8b",
          "type": "variable",
          "position": {
            "x": 617,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 617,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "4885247",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c_right-rail-rung_Batch_Controller_9e74fcb3-375c-4c34-ac10-467f5f1449fa__???_right-rail",
          "source": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
          "target": "right-rail-rung_Batch_Controller_9e74fcb3-375c-4c34-ac10-467f5f1449fa",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_Batch_Controller_9e74fcb3-375c-4c34-ac10-467f5f1449fa_CONTACT_882cdedb-4929-4eb2-8be1-a1e3d19301d9__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_9e74fcb3-375c-4c34-ac10-467f5f1449fa",
          "target": "CONTACT_882cdedb-4929-4eb2-8be1-a1e3d19301d9",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_882cdedb-4929-4eb2-8be1-a1e3d19301d9_CONTACT_9c9a583d-7582-4bc6-8be3-763bb2db0ae9__output_input",
          "source": "CONTACT_882cdedb-4929-4eb2-8be1-a1e3d19301d9",
          "target": "CONTACT_9c9a583d-7582-4bc6-8be3-763bb2db0ae9",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_9c9a583d-7582-4bc6-8be3-763bb2db0ae9_BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c__output_EN",
          "source": "CONTACT_9c9a583d-7582-4bc6-8be3-763bb2db0ae9",
          "target": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_9767d178-ad00-4ea6-a834-95046e28da53_BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c__output_Current_State",
          "source": "VARIABLE_9767d178-ad00-4ea6-a834-95046e28da53",
          "target": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
          "sourceHandle": "output",
          "targetHandle": "Current_State"
        },
        {
          "id": "e_VARIABLE_ef02eb65-a523-4a10-b0cb-058b49f43894_BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c__output_Required_State",
          "source": "VARIABLE_ef02eb65-a523-4a10-b0cb-058b49f43894",
          "target": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
          "sourceHandle": "output",
          "targetHandle": "Required_State"
        },
        {
          "id": "e_VARIABLE_3f9fdab4-1d6c-437b-955c-2f0417e56e8b_BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c__output_Next_State",
          "source": "VARIABLE_3f9fdab4-1d6c-437b-955c-2f0417e56e8b",
          "target": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
          "sourceHandle": "output",
          "targetHandle": "Next_State"
        },
        {
          "id": "e_BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c_VARIABLE_a1db439f-e66e-4d7a-92e8-e0d082647e8b__OUT_input",
          "source": "BLOCK_9b5c8f84-2c2c-45c3-9277-7972ce40cd4c",
          "target": "VARIABLE_a1db439f-e66e-4d7a-92e8-e0d082647e8b",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_4365a27a-9424-4656-a954-6f39cd8d4739",
      "comment": "Start Filling B",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "selectedNodes": [],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "6754234",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "5303350",
            "variant": {
              "name": "EQ",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "2"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "id": "801c733a-2193-4937-a547-6dadf1c9c11b",
                  "name": "Fill_B_Active",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "class": "local",
                  "location": "",
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "4505207",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_463ed503-e479-483c-a9c7-ce334ba9a656",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "1380104",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_299cbe36-9cf3-4052-8c93-1685ad912bb6",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5355318",
            "variable": {
              "name": "2"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_342f82d1-0031-4ab6-89de-a954225c64ad",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "10174057",
            "variable": {
              "id": "801c733a-2193-4937-a547-6dadf1c9c11b",
              "name": "Fill_B_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78_BLOCK_79801994-9f37-4455-9e07-98e8f56ed284__left-rail_EN",
          "source": "left-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "target": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_79801994-9f37-4455-9e07-98e8f56ed284_right-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78__ENO_right-rail",
          "source": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
          "target": "right-rail-rung_Batch_Controller_81d40e74-c0ea-4ca0-b3a3-de59c5757b78",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_463ed503-e479-483c-a9c7-ce334ba9a656_BLOCK_79801994-9f37-4455-9e07-98e8f56ed284__output_IN1",
          "source": "VARIABLE_463ed503-e479-483c-a9c7-ce334ba9a656",
          "target": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_299cbe36-9cf3-4052-8c93-1685ad912bb6_BLOCK_79801994-9f37-4455-9e07-98e8f56ed284__output_IN2",
          "source": "VARIABLE_299cbe36-9cf3-4052-8c93-1685ad912bb6",
          "target": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_79801994-9f37-4455-9e07-98e8f56ed284_VARIABLE_342f82d1-0031-4ab6-89de-a954225c64ad__OUT_input",
          "source": "BLOCK_79801994-9f37-4455-9e07-98e8f56ed284",
          "target": "VARIABLE_342f82d1-0031-4ab6-89de-a954225c64ad",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_cd508ebc-f82c-49e0-81c3-ebca15406474",
      "comment": "Filling B",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        437,
        120
      ],
      "selectedNodes": [],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "8760743",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_95afcb65-17ad-4d31-9619-f95a5b00e8fc",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "3122991",
            "variable": {
              "id": "",
              "name": "Fill_B_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_8db16889-5f8e-42c6-abbb-65dc975988fb",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6128792",
            "variable": {
              "id": "51509692-e64e-487b-a176-8d8968debf93",
              "name": "Fill_B_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_de5c2e92-34e5-4e64-a7f9-6de73726956d",
          "type": "coil",
          "position": {
            "x": 296,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 324,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "10485023",
            "variable": {
              "id": "",
              "name": "Ingredient_B_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "type": "powerRail",
          "position": {
            "x": 434,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 434
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 434
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7422225",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c_CONTACT_95afcb65-17ad-4d31-9619-f95a5b00e8fc__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "target": "CONTACT_95afcb65-17ad-4d31-9619-f95a5b00e8fc",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_95afcb65-17ad-4d31-9619-f95a5b00e8fc_CONTACT_8db16889-5f8e-42c6-abbb-65dc975988fb__output_input",
          "source": "CONTACT_95afcb65-17ad-4d31-9619-f95a5b00e8fc",
          "target": "CONTACT_8db16889-5f8e-42c6-abbb-65dc975988fb",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_8db16889-5f8e-42c6-abbb-65dc975988fb_COIL_de5c2e92-34e5-4e64-a7f9-6de73726956d__output_input",
          "source": "CONTACT_8db16889-5f8e-42c6-abbb-65dc975988fb",
          "target": "COIL_de5c2e92-34e5-4e64-a7f9-6de73726956d",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_de5c2e92-34e5-4e64-a7f9-6de73726956d_right-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c__output_right-rail",
          "source": "COIL_de5c2e92-34e5-4e64-a7f9-6de73726956d",
          "target": "right-rail-rung_Batch_Controller_30e86f39-8dd1-47ed-a934-cfbe9956460c",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        }
      ],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_8509ea54-968d-4a72-bc5d-1580bdc0c316",
      "comment": "Filled B",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "selectedNodes": [],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "5249515",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6287804",
            "variant": {
              "name": "GE",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Weight"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "id": "51509692-e64e-487b-a176-8d8968debf93",
                  "name": "Fill_B_Done",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "class": "local",
                  "location": "",
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "Batch.Ingredient_A+Batch.Ingredient_B"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "2371010",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_be81a4b2-2800-407c-9f00-2c42d521056e",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "10889607",
            "variable": {
              "name": "Weight"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_e699276c-395f-4ac8-9086-db59264ee6c4",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "3521356",
            "variable": {
              "name": "Batch.Ingredient_A+Batch.Ingredient_B"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_c0d88466-57cd-441d-9ab6-782e6a457471",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "7222308",
            "variable": {
              "id": "51509692-e64e-487b-a176-8d8968debf93",
              "name": "Fill_B_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e_right-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22__ENO_right-rail",
          "source": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
          "target": "right-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22_BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e__left-rail_EN",
          "source": "left-rail-rung_Batch_Controller_17bdb2b3-62f6-4d1f-bfdb-258df46c1f22",
          "target": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_be81a4b2-2800-407c-9f00-2c42d521056e_BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e__output_IN1",
          "source": "VARIABLE_be81a4b2-2800-407c-9f00-2c42d521056e",
          "target": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_e699276c-395f-4ac8-9086-db59264ee6c4_BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e__output_IN2",
          "source": "VARIABLE_e699276c-395f-4ac8-9086-db59264ee6c4",
          "target": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e_VARIABLE_c0d88466-57cd-441d-9ab6-782e6a457471__OUT_input",
          "source": "BLOCK_058c60d0-27b3-48bb-a6c5-cfd75533320e",
          "target": "VARIABLE_c0d88466-57cd-441d-9ab6-782e6a457471",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_de3d444d-3e61-434d-a00c-8f870f6c235e",
      "comment": "Mix initialize",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        850,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_de3d444d-3e61-434d-a00c-8f870f6c235e",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "3983676",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_828f760c-e6e4-4f22-bf26-dbcdcfce2751",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1478004",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_d8085426-47f1-41e8-9204-a8ee97c192ee",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6966858",
            "variable": {
              "id": "",
              "name": "Fill_B_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 587,
                "y": 50
              },
              "relPosition": {
                "x": 216,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "2274201",
            "variant": {
              "name": "State_Transition",
              "type": "function",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Current_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Required_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Next_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "documentation": "",
              "extensible": false
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "Current_State",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Required_State",
                "type": "input",
                "variable": {
                  "name": "2"
                }
              },
              {
                "handleId": "Next_State",
                "type": "input",
                "variable": {
                  "name": "3"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 216,
          "height": 180,
          "measured": {
            "width": 216,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_de3d444d-3e61-434d-a00c-8f870f6c235e",
          "type": "powerRail",
          "position": {
            "x": 847,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 847
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "2520803",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_d026c985-eac2-4958-8614-92d9b40958b0",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "9362925",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
              "handleId": "Current_State",
              "variableType": {
                "name": "Current_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_6be14e7d-0c20-44c1-8390-b250343b087f",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "9254018",
            "variable": {
              "name": "2"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
              "handleId": "Required_State",
              "variableType": {
                "name": "Required_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_f238cc81-d71b-4465-aa11-a35f6afc741a",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "6366442",
            "variable": {
              "name": "3"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
              "handleId": "Next_State",
              "variableType": {
                "name": "Next_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_ce958e30-3da1-40ae-9175-8d8b4513d350",
          "type": "variable",
          "position": {
            "x": 617,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 617,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "7564864",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6_right-rail-rung_Batch_Controller_de3d444d-3e61-434d-a00c-8f870f6c235e__???_right-rail",
          "source": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
          "target": "right-rail-rung_Batch_Controller_de3d444d-3e61-434d-a00c-8f870f6c235e",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_Batch_Controller_de3d444d-3e61-434d-a00c-8f870f6c235e_CONTACT_828f760c-e6e4-4f22-bf26-dbcdcfce2751__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_de3d444d-3e61-434d-a00c-8f870f6c235e",
          "target": "CONTACT_828f760c-e6e4-4f22-bf26-dbcdcfce2751",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_828f760c-e6e4-4f22-bf26-dbcdcfce2751_CONTACT_d8085426-47f1-41e8-9204-a8ee97c192ee__output_input",
          "source": "CONTACT_828f760c-e6e4-4f22-bf26-dbcdcfce2751",
          "target": "CONTACT_d8085426-47f1-41e8-9204-a8ee97c192ee",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_d8085426-47f1-41e8-9204-a8ee97c192ee_BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6__output_EN",
          "source": "CONTACT_d8085426-47f1-41e8-9204-a8ee97c192ee",
          "target": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_d026c985-eac2-4958-8614-92d9b40958b0_BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6__output_Current_State",
          "source": "VARIABLE_d026c985-eac2-4958-8614-92d9b40958b0",
          "target": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
          "sourceHandle": "output",
          "targetHandle": "Current_State"
        },
        {
          "id": "e_VARIABLE_6be14e7d-0c20-44c1-8390-b250343b087f_BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6__output_Required_State",
          "source": "VARIABLE_6be14e7d-0c20-44c1-8390-b250343b087f",
          "target": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
          "sourceHandle": "output",
          "targetHandle": "Required_State"
        },
        {
          "id": "e_VARIABLE_f238cc81-d71b-4465-aa11-a35f6afc741a_BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6__output_Next_State",
          "source": "VARIABLE_f238cc81-d71b-4465-aa11-a35f6afc741a",
          "target": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
          "sourceHandle": "output",
          "targetHandle": "Next_State"
        },
        {
          "id": "e_BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6_VARIABLE_ce958e30-3da1-40ae-9175-8d8b4513d350__OUT_input",
          "source": "BLOCK_f11c3a5e-043a-4dd2-9202-e22dfbb0d7d6",
          "target": "VARIABLE_ce958e30-3da1-40ae-9175-8d8b4513d350",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_50b4e5b8-47d8-4e69-8dd2-fbbaf37d63b6",
      "comment": "Start mix",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_50b4e5b8-47d8-4e69-8dd2-fbbaf37d63b6",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "7085426",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "9925134",
            "variant": {
              "name": "EQ",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "3"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Mix_Active",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_50b4e5b8-47d8-4e69-8dd2-fbbaf37d63b6",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "6557588",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_66d471de-969d-4e37-a01e-d2fb2034b6df",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "6522466",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_10b0f5da-7e54-4d58-b600-f3b57c1c1f6d",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "1128148",
            "variable": {
              "name": "3"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_a38b4d63-0ab1-4d2a-8530-ef6a22d3dbeb",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "548859",
            "variable": {
              "name": "Mix_Active",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_50b4e5b8-47d8-4e69-8dd2-fbbaf37d63b6_BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7__left-rail_IN1",
          "source": "left-rail-rung_Batch_Controller_50b4e5b8-47d8-4e69-8dd2-fbbaf37d63b6",
          "target": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7_right-rail-rung_Batch_Controller_50b4e5b8-47d8-4e69-8dd2-fbbaf37d63b6__OUT_right-rail",
          "source": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
          "target": "right-rail-rung_Batch_Controller_50b4e5b8-47d8-4e69-8dd2-fbbaf37d63b6",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_66d471de-969d-4e37-a01e-d2fb2034b6df_BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7__output_IN1",
          "source": "VARIABLE_66d471de-969d-4e37-a01e-d2fb2034b6df",
          "target": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_10b0f5da-7e54-4d58-b600-f3b57c1c1f6d_BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7__output_IN2",
          "source": "VARIABLE_10b0f5da-7e54-4d58-b600-f3b57c1c1f6d",
          "target": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7_VARIABLE_a38b4d63-0ab1-4d2a-8530-ef6a22d3dbeb__OUT_input",
          "source": "BLOCK_016520f7-9a21-45f5-9ae6-03553f8e82d7",
          "target": "VARIABLE_a38b4d63-0ab1-4d2a-8530-ef6a22d3dbeb",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_79bac202-e879-4221-9931-407dc15f4323",
      "comment": "Mixing",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        437,
        120
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_79bac202-e879-4221-9931-407dc15f4323",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "3333498",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_3c3ad5fc-01a5-43b0-a1b9-8b26f9c63b57",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "10229087",
            "variable": {
              "id": "",
              "name": "Mix_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_668197a1-930c-4b39-9654-05b16470ed01",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1906986",
            "variable": {
              "id": "",
              "name": "Mix_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_c0d4b9df-a698-4ec9-9169-a46212e1c082",
          "type": "coil",
          "position": {
            "x": 296,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 324,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "8528799",
            "variable": {
              "id": "",
              "name": "Mixer_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_79bac202-e879-4221-9931-407dc15f4323",
          "type": "powerRail",
          "position": {
            "x": 434,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 434
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7487671",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_79bac202-e879-4221-9931-407dc15f4323_CONTACT_3c3ad5fc-01a5-43b0-a1b9-8b26f9c63b57__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_79bac202-e879-4221-9931-407dc15f4323",
          "target": "CONTACT_3c3ad5fc-01a5-43b0-a1b9-8b26f9c63b57",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_3c3ad5fc-01a5-43b0-a1b9-8b26f9c63b57_CONTACT_668197a1-930c-4b39-9654-05b16470ed01__output_input",
          "source": "CONTACT_3c3ad5fc-01a5-43b0-a1b9-8b26f9c63b57",
          "target": "CONTACT_668197a1-930c-4b39-9654-05b16470ed01",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_668197a1-930c-4b39-9654-05b16470ed01_COIL_c0d4b9df-a698-4ec9-9169-a46212e1c082__output_input",
          "source": "CONTACT_668197a1-930c-4b39-9654-05b16470ed01",
          "target": "COIL_c0d4b9df-a698-4ec9-9169-a46212e1c082",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_c0d4b9df-a698-4ec9-9169-a46212e1c082_right-rail-rung_Batch_Controller_79bac202-e879-4221-9931-407dc15f4323__output_right-rail",
          "source": "COIL_c0d4b9df-a698-4ec9-9169-a46212e1c082",
          "target": "right-rail-rung_Batch_Controller_79bac202-e879-4221-9931-407dc15f4323",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_9fe506cf-da92-4063-b3d4-bd540fc33b9a",
      "comment": "Mix done",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        629,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_9fe506cf-da92-4063-b3d4-bd540fc33b9a",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "4917867",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_63c45078-cb2a-4eae-8d30-1e27bcb39386",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7216327",
            "variable": {
              "id": "",
              "name": "Mix_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 323,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 323,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "IN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 323,
                "y": 50
              },
              "relPosition": {
                "x": 66,
                "y": 36
              },
              "id": "Q",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "529881",
            "variant": {
              "name": "TON",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "PT",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ET",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                }
              ],
              "body": "",
              "documentation": "The on-delay timer can be used to delay setting an output true, for fixed period after an input becomes true."
            },
            "variable": {
              "name": "Mix_Timer",
              "class": "local",
              "type": {
                "definition": "derived",
                "value": "TON"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": false,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "PT",
                "type": "input",
                "variable": {
                  "name": "Batch.Mix_Time"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 66,
          "height": 100,
          "measured": {
            "width": 66,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_3dbf1678-be72-4ac9-81f5-cb21645def6a",
          "type": "coil",
          "position": {
            "x": 488,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 488,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 516,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 488,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 516,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7056515",
            "variable": {
              "id": "",
              "name": "Mix_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_9fe506cf-da92-4063-b3d4-bd540fc33b9a",
          "type": "powerRail",
          "position": {
            "x": 626,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 626
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "4631339",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_bb64b0b6-a4d9-4784-9268-10fb391e022b",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "2903568",
            "variable": {
              "name": "Batch.Mix_Time"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a",
              "handleId": "PT",
              "variableType": {
                "name": "PT",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_c9f78bec-d4ce-427b-8d5b-352d53f1f327",
          "type": "variable",
          "position": {
            "x": 353,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 353,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 353,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "6502700",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a",
              "handleId": "ET",
              "variableType": {
                "name": "ET",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_9fe506cf-da92-4063-b3d4-bd540fc33b9a_CONTACT_63c45078-cb2a-4eae-8d30-1e27bcb39386__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_9fe506cf-da92-4063-b3d4-bd540fc33b9a",
          "target": "CONTACT_63c45078-cb2a-4eae-8d30-1e27bcb39386",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a_COIL_3dbf1678-be72-4ac9-81f5-cb21645def6a__Q_input",
          "source": "BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a",
          "target": "COIL_3dbf1678-be72-4ac9-81f5-cb21645def6a",
          "sourceHandle": "Q",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_3dbf1678-be72-4ac9-81f5-cb21645def6a_right-rail-rung_Batch_Controller_9fe506cf-da92-4063-b3d4-bd540fc33b9a__output_right-rail",
          "source": "COIL_3dbf1678-be72-4ac9-81f5-cb21645def6a",
          "target": "right-rail-rung_Batch_Controller_9fe506cf-da92-4063-b3d4-bd540fc33b9a",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_CONTACT_63c45078-cb2a-4eae-8d30-1e27bcb39386_BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a__output_IN",
          "source": "CONTACT_63c45078-cb2a-4eae-8d30-1e27bcb39386",
          "target": "BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a",
          "sourceHandle": "output",
          "targetHandle": "IN"
        },
        {
          "id": "e_VARIABLE_bb64b0b6-a4d9-4784-9268-10fb391e022b_BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a__output_PT",
          "source": "VARIABLE_bb64b0b6-a4d9-4784-9268-10fb391e022b",
          "target": "BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a",
          "sourceHandle": "output",
          "targetHandle": "PT"
        },
        {
          "id": "e_BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a_VARIABLE_c9f78bec-d4ce-427b-8d5b-352d53f1f327__ET_input",
          "source": "BLOCK_b7033f98-4fc0-4e6f-8e1f-4efde7ef787a",
          "target": "VARIABLE_c9f78bec-d4ce-427b-8d5b-352d53f1f327",
          "sourceHandle": "ET",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_58eb27d5-de72-44ba-a08b-6b37ff57d0bf",
      "comment": "Discharge Initilize",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        850,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_58eb27d5-de72-44ba-a08b-6b37ff57d0bf",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "6882894",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_80ea0535-9780-42f3-aea0-8f70108a9493",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2512754",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_a8db639e-b2c5-4e4b-abb5-3315a3600311",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "4305641",
            "variable": {
              "id": "",
              "name": "Mix_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 587,
                "y": 50
              },
              "relPosition": {
                "x": 216,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "7208895",
            "variant": {
              "name": "State_Transition",
              "type": "function",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Current_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Required_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Next_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "documentation": "",
              "extensible": false
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "Current_State",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Required_State",
                "type": "input",
                "variable": {
                  "name": "3"
                }
              },
              {
                "handleId": "Next_State",
                "type": "input",
                "variable": {
                  "name": "4"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 216,
          "height": 180,
          "measured": {
            "width": 216,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_58eb27d5-de72-44ba-a08b-6b37ff57d0bf",
          "type": "powerRail",
          "position": {
            "x": 847,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 847
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "9184143",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_83cddd32-5759-436a-b91b-c63d18d9393f",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "7754502",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
              "handleId": "Current_State",
              "variableType": {
                "name": "Current_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_36c0d147-3db9-4f18-a5c4-a336b697c667",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "7750870",
            "variable": {
              "name": "3"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
              "handleId": "Required_State",
              "variableType": {
                "name": "Required_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_d05a2374-95db-4ad4-a3c1-b7346b08ea38",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "4019961",
            "variable": {
              "name": "4"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
              "handleId": "Next_State",
              "variableType": {
                "name": "Next_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_0c69f853-254a-45a4-8ffe-e320c03b5318",
          "type": "variable",
          "position": {
            "x": 617,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 617,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "3187131",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_58eb27d5-de72-44ba-a08b-6b37ff57d0bf_CONTACT_80ea0535-9780-42f3-aea0-8f70108a9493__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_58eb27d5-de72-44ba-a08b-6b37ff57d0bf",
          "target": "CONTACT_80ea0535-9780-42f3-aea0-8f70108a9493",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_80ea0535-9780-42f3-aea0-8f70108a9493_CONTACT_a8db639e-b2c5-4e4b-abb5-3315a3600311__output_input",
          "source": "CONTACT_80ea0535-9780-42f3-aea0-8f70108a9493",
          "target": "CONTACT_a8db639e-b2c5-4e4b-abb5-3315a3600311",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_a8db639e-b2c5-4e4b-abb5-3315a3600311_BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6__output_???",
          "source": "CONTACT_a8db639e-b2c5-4e4b-abb5-3315a3600311",
          "target": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6_right-rail-rung_Batch_Controller_58eb27d5-de72-44ba-a08b-6b37ff57d0bf__???_right-rail",
          "source": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
          "target": "right-rail-rung_Batch_Controller_58eb27d5-de72-44ba-a08b-6b37ff57d0bf",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_83cddd32-5759-436a-b91b-c63d18d9393f_BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6__output_Current_State",
          "source": "VARIABLE_83cddd32-5759-436a-b91b-c63d18d9393f",
          "target": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
          "sourceHandle": "output",
          "targetHandle": "Current_State"
        },
        {
          "id": "e_VARIABLE_36c0d147-3db9-4f18-a5c4-a336b697c667_BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6__output_Required_State",
          "source": "VARIABLE_36c0d147-3db9-4f18-a5c4-a336b697c667",
          "target": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
          "sourceHandle": "output",
          "targetHandle": "Required_State"
        },
        {
          "id": "e_VARIABLE_d05a2374-95db-4ad4-a3c1-b7346b08ea38_BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6__output_Next_State",
          "source": "VARIABLE_d05a2374-95db-4ad4-a3c1-b7346b08ea38",
          "target": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
          "sourceHandle": "output",
          "targetHandle": "Next_State"
        },
        {
          "id": "e_BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6_VARIABLE_0c69f853-254a-45a4-8ffe-e320c03b5318__OUT_input",
          "source": "BLOCK_2155daf8-528c-4f3e-ad90-5b7a911765f6",
          "target": "VARIABLE_0c69f853-254a-45a4-8ffe-e320c03b5318",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_75ec3f07-7195-4f40-9119-c7f30f78450b",
      "comment": "Start discharge",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_75ec3f07-7195-4f40-9119-c7f30f78450b",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "9518015",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "5895212",
            "variant": {
              "name": "EQ",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "4"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Discharge_Active",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_75ec3f07-7195-4f40-9119-c7f30f78450b",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "8517695",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_90f5c4d5-c263-4a5d-97b2-855f03a5b791",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "6069812",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_133b46c5-4fcd-4002-abe0-a6cdf9939bbb",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8753197",
            "variable": {
              "name": "4"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_3604ad71-9ed3-4607-9589-104887a49aa4",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "6978903",
            "variable": {
              "name": "Discharge_Active",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_75ec3f07-7195-4f40-9119-c7f30f78450b_BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4__left-rail_IN1",
          "source": "left-rail-rung_Batch_Controller_75ec3f07-7195-4f40-9119-c7f30f78450b",
          "target": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4_right-rail-rung_Batch_Controller_75ec3f07-7195-4f40-9119-c7f30f78450b__OUT_right-rail",
          "source": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
          "target": "right-rail-rung_Batch_Controller_75ec3f07-7195-4f40-9119-c7f30f78450b",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_90f5c4d5-c263-4a5d-97b2-855f03a5b791_BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4__output_IN1",
          "source": "VARIABLE_90f5c4d5-c263-4a5d-97b2-855f03a5b791",
          "target": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_133b46c5-4fcd-4002-abe0-a6cdf9939bbb_BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4__output_IN2",
          "source": "VARIABLE_133b46c5-4fcd-4002-abe0-a6cdf9939bbb",
          "target": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4_VARIABLE_3604ad71-9ed3-4607-9589-104887a49aa4__OUT_input",
          "source": "BLOCK_94124780-c304-41b9-8a2f-066fcbe084c4",
          "target": "VARIABLE_3604ad71-9ed3-4607-9589-104887a49aa4",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_eb0eb050-5742-4b8e-a1e4-9d83f388c1a0",
      "comment": "Discharging",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        437,
        120
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_eb0eb050-5742-4b8e-a1e4-9d83f388c1a0",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "10005075",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_603528ff-c8e1-4f04-b90f-6caa31952e06",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "8893122",
            "variable": {
              "id": "",
              "name": "Discharge_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_2cd0f9c4-bd22-4164-aaf3-0405d6df7a9d",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9272266",
            "variable": {
              "id": "",
              "name": "Discharge_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_2a19af93-e0de-4ed6-b84e-deafa98774d2",
          "type": "coil",
          "position": {
            "x": 296,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 324,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 324,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "5381734",
            "variable": {
              "id": "",
              "name": "Discharge_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_eb0eb050-5742-4b8e-a1e4-9d83f388c1a0",
          "type": "powerRail",
          "position": {
            "x": 434,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 434
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "1158984",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_eb0eb050-5742-4b8e-a1e4-9d83f388c1a0_CONTACT_603528ff-c8e1-4f04-b90f-6caa31952e06__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_eb0eb050-5742-4b8e-a1e4-9d83f388c1a0",
          "target": "CONTACT_603528ff-c8e1-4f04-b90f-6caa31952e06",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_603528ff-c8e1-4f04-b90f-6caa31952e06_CONTACT_2cd0f9c4-bd22-4164-aaf3-0405d6df7a9d__output_input",
          "source": "CONTACT_603528ff-c8e1-4f04-b90f-6caa31952e06",
          "target": "CONTACT_2cd0f9c4-bd22-4164-aaf3-0405d6df7a9d",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_2cd0f9c4-bd22-4164-aaf3-0405d6df7a9d_COIL_2a19af93-e0de-4ed6-b84e-deafa98774d2__output_input",
          "source": "CONTACT_2cd0f9c4-bd22-4164-aaf3-0405d6df7a9d",
          "target": "COIL_2a19af93-e0de-4ed6-b84e-deafa98774d2",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_2a19af93-e0de-4ed6-b84e-deafa98774d2_right-rail-rung_Batch_Controller_eb0eb050-5742-4b8e-a1e4-9d83f388c1a0__output_right-rail",
          "source": "COIL_2a19af93-e0de-4ed6-b84e-deafa98774d2",
          "target": "right-rail-rung_Batch_Controller_eb0eb050-5742-4b8e-a1e4-9d83f388c1a0",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_b32f0860-32d0-4cac-be1c-02b7a3abb86d",
      "comment": "Discharge done",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_b32f0860-32d0-4cac-be1c-02b7a3abb86d",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "861937",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "3430049",
            "variant": {
              "name": "LE",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Weight"
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "0"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Discharge_Done",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_b32f0860-32d0-4cac-be1c-02b7a3abb86d",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "1205655",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_9471a81d-af1b-4a4f-8449-8b1b32f3e5c5",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8835073",
            "variable": {
              "name": "Weight"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_ed2f4114-4e77-48a6-8532-5d0781464474",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "3423772",
            "variable": {
              "name": "0"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_71927be0-6181-43f9-a47a-66a08cebed34",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "2980312",
            "variable": {
              "name": "Discharge_Done",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_b32f0860-32d0-4cac-be1c-02b7a3abb86d_BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65__left-rail_IN1",
          "source": "left-rail-rung_Batch_Controller_b32f0860-32d0-4cac-be1c-02b7a3abb86d",
          "target": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65_right-rail-rung_Batch_Controller_b32f0860-32d0-4cac-be1c-02b7a3abb86d__OUT_right-rail",
          "source": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
          "target": "right-rail-rung_Batch_Controller_b32f0860-32d0-4cac-be1c-02b7a3abb86d",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_9471a81d-af1b-4a4f-8449-8b1b32f3e5c5_BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65__output_IN1",
          "source": "VARIABLE_9471a81d-af1b-4a4f-8449-8b1b32f3e5c5",
          "target": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_ed2f4114-4e77-48a6-8532-5d0781464474_BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65__output_IN2",
          "source": "VARIABLE_ed2f4114-4e77-48a6-8532-5d0781464474",
          "target": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65_VARIABLE_71927be0-6181-43f9-a47a-66a08cebed34__OUT_input",
          "source": "BLOCK_aba1c853-2d41-4ae4-a031-ffd3ba1b4b65",
          "target": "VARIABLE_71927be0-6181-43f9-a47a-66a08cebed34",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_91dc31b8-8fbf-451b-9017-491dfc02dac7",
      "comment": "Initailize packing",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        850,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_91dc31b8-8fbf-451b-9017-491dfc02dac7",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "1156724",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_942125b6-a013-48e7-aad5-017d52c2382b",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "4088200",
            "variable": {
              "id": "",
              "name": "Discharge_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_3a9f13f8-7dd1-4a90-b4dc-076fdbb546e5",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1765441",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 587,
                "y": 50
              },
              "relPosition": {
                "x": 216,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "8190217",
            "variant": {
              "name": "State_Transition",
              "type": "function",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Current_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Required_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Next_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "documentation": "",
              "extensible": false
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "Current_State",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Required_State",
                "type": "input",
                "variable": {
                  "name": "4"
                }
              },
              {
                "handleId": "Next_State",
                "type": "input",
                "variable": {
                  "name": "5"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 216,
          "height": 180,
          "measured": {
            "width": 216,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_91dc31b8-8fbf-451b-9017-491dfc02dac7",
          "type": "powerRail",
          "position": {
            "x": 847,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 847
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "5985048",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_950488d5-2bf8-417c-a52b-3d3b2c1080fa",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8199817",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
              "handleId": "Current_State",
              "variableType": {
                "name": "Current_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_1bd27966-cbd5-402c-b820-17f55c3e2891",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "4399465",
            "variable": {
              "name": "4"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
              "handleId": "Required_State",
              "variableType": {
                "name": "Required_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_f9ce1614-0f89-477f-9e07-ba94557f82ae",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "10156732",
            "variable": {
              "name": "5"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
              "handleId": "Next_State",
              "variableType": {
                "name": "Next_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_c926abf1-0bc4-4df2-bbcd-d47cdb612f48",
          "type": "variable",
          "position": {
            "x": 617,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 617,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "7830066",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_91dc31b8-8fbf-451b-9017-491dfc02dac7_CONTACT_942125b6-a013-48e7-aad5-017d52c2382b__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_91dc31b8-8fbf-451b-9017-491dfc02dac7",
          "target": "CONTACT_942125b6-a013-48e7-aad5-017d52c2382b",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_942125b6-a013-48e7-aad5-017d52c2382b_CONTACT_3a9f13f8-7dd1-4a90-b4dc-076fdbb546e5__output_input",
          "source": "CONTACT_942125b6-a013-48e7-aad5-017d52c2382b",
          "target": "CONTACT_3a9f13f8-7dd1-4a90-b4dc-076fdbb546e5",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_3a9f13f8-7dd1-4a90-b4dc-076fdbb546e5_BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d__output_???",
          "source": "CONTACT_3a9f13f8-7dd1-4a90-b4dc-076fdbb546e5",
          "target": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d_right-rail-rung_Batch_Controller_91dc31b8-8fbf-451b-9017-491dfc02dac7__???_right-rail",
          "source": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
          "target": "right-rail-rung_Batch_Controller_91dc31b8-8fbf-451b-9017-491dfc02dac7",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_950488d5-2bf8-417c-a52b-3d3b2c1080fa_BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d__output_Current_State",
          "source": "VARIABLE_950488d5-2bf8-417c-a52b-3d3b2c1080fa",
          "target": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
          "sourceHandle": "output",
          "targetHandle": "Current_State"
        },
        {
          "id": "e_VARIABLE_1bd27966-cbd5-402c-b820-17f55c3e2891_BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d__output_Required_State",
          "source": "VARIABLE_1bd27966-cbd5-402c-b820-17f55c3e2891",
          "target": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
          "sourceHandle": "output",
          "targetHandle": "Required_State"
        },
        {
          "id": "e_VARIABLE_f9ce1614-0f89-477f-9e07-ba94557f82ae_BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d__output_Next_State",
          "source": "VARIABLE_f9ce1614-0f89-477f-9e07-ba94557f82ae",
          "target": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
          "sourceHandle": "output",
          "targetHandle": "Next_State"
        },
        {
          "id": "e_BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d_VARIABLE_c926abf1-0bc4-4df2-bbcd-d47cdb612f48__OUT_input",
          "source": "BLOCK_afa0ccbc-c254-49a8-9bf7-082f0a58217d",
          "target": "VARIABLE_c926abf1-0bc4-4df2-bbcd-d47cdb612f48",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_2b78fd33-e852-478f-ac92-bed60865545c",
      "comment": "Packing start",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_2b78fd33-e852-478f-ac92-bed60865545c",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "768391",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "4501258",
            "variant": {
              "name": "EQ",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Packaging_Active",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "5"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_2b78fd33-e852-478f-ac92-bed60865545c",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7068652",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_bcb5c3b1-b2cf-4284-8a60-b346f3dca100",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5100949",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_c0370542-10d8-4e3b-ae33-3fbabd6ab001",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "8282124",
            "variable": {
              "name": "5"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b88a6988-12c0-483d-bdfc-fcf66ec4cd89",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "5241088",
            "variable": {
              "name": "Packaging_Active",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_2b78fd33-e852-478f-ac92-bed60865545c_BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057__left-rail_IN1",
          "source": "left-rail-rung_Batch_Controller_2b78fd33-e852-478f-ac92-bed60865545c",
          "target": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057_right-rail-rung_Batch_Controller_2b78fd33-e852-478f-ac92-bed60865545c__OUT_right-rail",
          "source": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
          "target": "right-rail-rung_Batch_Controller_2b78fd33-e852-478f-ac92-bed60865545c",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_bcb5c3b1-b2cf-4284-8a60-b346f3dca100_BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057__output_IN1",
          "source": "VARIABLE_bcb5c3b1-b2cf-4284-8a60-b346f3dca100",
          "target": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_c0370542-10d8-4e3b-ae33-3fbabd6ab001_BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057__output_IN2",
          "source": "VARIABLE_c0370542-10d8-4e3b-ae33-3fbabd6ab001",
          "target": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057_VARIABLE_b88a6988-12c0-483d-bdfc-fcf66ec4cd89__OUT_input",
          "source": "BLOCK_cb5a420c-04cb-4d3c-8604-8f93492ad057",
          "target": "VARIABLE_b88a6988-12c0-483d-bdfc-fcf66ec4cd89",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_36bfef12-d8f2-47ab-9bbd-72e89b99e355",
      "comment": "Packing",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        323,
        120
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_36bfef12-d8f2-47ab-9bbd-72e89b99e355",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "5552126",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_83499720-5df0-43bd-9071-400c36f0f20a",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "10111540",
            "variable": {
              "id": "",
              "name": "Packaging_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_df5cdf32-2db4-4bb8-968a-a35035d8ac84",
          "type": "coil",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 210,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 210,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 210,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2516984",
            "variable": {
              "id": "",
              "name": "Packaging_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_36bfef12-d8f2-47ab-9bbd-72e89b99e355",
          "type": "powerRail",
          "position": {
            "x": 320,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 320
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "5741325",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_36bfef12-d8f2-47ab-9bbd-72e89b99e355_CONTACT_83499720-5df0-43bd-9071-400c36f0f20a__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_36bfef12-d8f2-47ab-9bbd-72e89b99e355",
          "target": "CONTACT_83499720-5df0-43bd-9071-400c36f0f20a",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_83499720-5df0-43bd-9071-400c36f0f20a_COIL_df5cdf32-2db4-4bb8-968a-a35035d8ac84__output_input",
          "source": "CONTACT_83499720-5df0-43bd-9071-400c36f0f20a",
          "target": "COIL_df5cdf32-2db4-4bb8-968a-a35035d8ac84",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_df5cdf32-2db4-4bb8-968a-a35035d8ac84_right-rail-rung_Batch_Controller_36bfef12-d8f2-47ab-9bbd-72e89b99e355__output_right-rail",
          "source": "COIL_df5cdf32-2db4-4bb8-968a-a35035d8ac84",
          "target": "right-rail-rung_Batch_Controller_36bfef12-d8f2-47ab-9bbd-72e89b99e355",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_4e0ac38b-4f52-4abe-9094-a718192dc18a",
      "comment": "Packing done",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        743,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_4e0ac38b-4f52-4abe-9094-a718192dc18a",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "6950092",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_d5171251-4d61-4dc3-8bc7-bec9efaf3c6b",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6833129",
            "variable": {
              "id": "",
              "name": "Packaging_Active",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_eee10656-b381-47a9-bf6a-245e708c0cc0",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9368309",
            "variable": {
              "id": "",
              "name": "Packaging_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 437,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 437,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "PT",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 437,
                  "y": 50
                },
                "relPosition": {
                  "x": 66,
                  "y": 36
                },
                "id": "Q",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 437,
                  "y": 90
                },
                "relPosition": {
                  "x": 66,
                  "y": 76
                },
                "id": "ET",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "IN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 437,
                "y": 50
              },
              "relPosition": {
                "x": 66,
                "y": 36
              },
              "id": "Q",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "10486916",
            "variant": {
              "name": "TON",
              "type": "function-block",
              "language": "st",
              "variables": [
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "PT",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                },
                {
                  "name": "Q",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ET",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "TIME"
                  }
                }
              ],
              "body": "",
              "documentation": "The on-delay timer can be used to delay setting an output true, for fixed period after an input becomes true."
            },
            "variable": {
              "name": "Packaging_Timer",
              "class": "local",
              "type": {
                "definition": "derived",
                "value": "TON"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": false,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "PT",
                "type": "input",
                "variable": {
                  "name": "Batch.Packing_Time"
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 66,
          "height": 100,
          "measured": {
            "width": 66,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_3c9e1045-6140-4e9d-bd24-a4173510cd3b",
          "type": "coil",
          "position": {
            "x": 602,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 602,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 630,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 602,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 630,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 602,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 630,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2482270",
            "variable": {
              "id": "",
              "name": "Packaging_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_4e0ac38b-4f52-4abe-9094-a718192dc18a",
          "type": "powerRail",
          "position": {
            "x": 740,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 740
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "9629842",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_2e14f235-5040-438e-bbb8-8006f1274cff",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "7050475",
            "variable": {
              "name": "Batch.Packing_Time"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09",
              "handleId": "PT",
              "variableType": {
                "name": "PT",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b6723f22-6ab7-460e-9c0f-e6aaf43cd190",
          "type": "variable",
          "position": {
            "x": 467,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 467,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 467,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 467,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "6058594",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09",
              "handleId": "ET",
              "variableType": {
                "name": "ET",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "TIME"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_4e0ac38b-4f52-4abe-9094-a718192dc18a_CONTACT_d5171251-4d61-4dc3-8bc7-bec9efaf3c6b__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_4e0ac38b-4f52-4abe-9094-a718192dc18a",
          "target": "CONTACT_d5171251-4d61-4dc3-8bc7-bec9efaf3c6b",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_d5171251-4d61-4dc3-8bc7-bec9efaf3c6b_CONTACT_eee10656-b381-47a9-bf6a-245e708c0cc0__output_input",
          "source": "CONTACT_d5171251-4d61-4dc3-8bc7-bec9efaf3c6b",
          "target": "CONTACT_eee10656-b381-47a9-bf6a-245e708c0cc0",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_eee10656-b381-47a9-bf6a-245e708c0cc0_BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09__output_???",
          "source": "CONTACT_eee10656-b381-47a9-bf6a-245e708c0cc0",
          "target": "BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09",
          "sourceHandle": "output",
          "targetHandle": "IN"
        },
        {
          "id": "e_BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09_COIL_3c9e1045-6140-4e9d-bd24-a4173510cd3b__Q_input",
          "source": "BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09",
          "target": "COIL_3c9e1045-6140-4e9d-bd24-a4173510cd3b",
          "sourceHandle": "Q",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_3c9e1045-6140-4e9d-bd24-a4173510cd3b_right-rail-rung_Batch_Controller_4e0ac38b-4f52-4abe-9094-a718192dc18a__output_right-rail",
          "source": "COIL_3c9e1045-6140-4e9d-bd24-a4173510cd3b",
          "target": "right-rail-rung_Batch_Controller_4e0ac38b-4f52-4abe-9094-a718192dc18a",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_2e14f235-5040-438e-bbb8-8006f1274cff_BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09__output_PT",
          "source": "VARIABLE_2e14f235-5040-438e-bbb8-8006f1274cff",
          "target": "BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09",
          "sourceHandle": "output",
          "targetHandle": "PT"
        },
        {
          "id": "e_BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09_VARIABLE_b6723f22-6ab7-460e-9c0f-e6aaf43cd190__ET_input",
          "source": "BLOCK_a61a586a-790c-4032-b30f-3abaf7158b09",
          "target": "VARIABLE_b6723f22-6ab7-460e-9c0f-e6aaf43cd190",
          "sourceHandle": "ET",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_62e62e93-a6f1-4a14-97be-c57220fa1fcc",
      "comment": "Initialize complete",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        850,
        214
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_62e62e93-a6f1-4a14-97be-c57220fa1fcc",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "8922974",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_375a43bd-8f34-46ba-b91e-bb32147c70ff",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6007535",
            "variable": {
              "id": "",
              "name": "Packaging_Done",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_f063c4e5-4742-45a1-8ede-62fe90471ab1",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1582883",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "Current_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "Required_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "Next_State",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 587,
                  "y": 50
                },
                "relPosition": {
                  "x": 216,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 587,
                  "y": 90
                },
                "relPosition": {
                  "x": 216,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 587,
                "y": 50
              },
              "relPosition": {
                "x": 216,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "3411278",
            "variant": {
              "name": "State_Transition",
              "type": "function",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Current_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Required_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "Next_State",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                }
              ],
              "documentation": "",
              "extensible": false
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "Current_State",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "Required_State",
                "type": "input",
                "variable": {
                  "name": "5"
                }
              },
              {
                "handleId": "Next_State",
                "type": "input",
                "variable": {
                  "name": "6"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 216,
          "height": 180,
          "measured": {
            "width": 216,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_62e62e93-a6f1-4a14-97be-c57220fa1fcc",
          "type": "powerRail",
          "position": {
            "x": 847,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 847
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "5860101",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_e563859d-27bd-4739-8063-2826f0078c20",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5379354",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
              "handleId": "Current_State",
              "variableType": {
                "name": "Current_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_9f601363-60e9-4417-af8b-c73a03fe5ef3",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "6054132",
            "variable": {
              "name": "5"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
              "handleId": "Required_State",
              "variableType": {
                "name": "Required_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_fc120762-a8b6-43af-a925-684bb6d301fb",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 154
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 170
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 170
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "10040440",
            "variable": {
              "name": "6"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
              "handleId": "Next_State",
              "variableType": {
                "name": "Next_State",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_1ea91645-3aa5-4f4d-a4fa-a638abacee2d",
          "type": "variable",
          "position": {
            "x": 617,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 617,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 617,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "10288922",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_62e62e93-a6f1-4a14-97be-c57220fa1fcc_CONTACT_375a43bd-8f34-46ba-b91e-bb32147c70ff__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_62e62e93-a6f1-4a14-97be-c57220fa1fcc",
          "target": "CONTACT_375a43bd-8f34-46ba-b91e-bb32147c70ff",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444_right-rail-rung_Batch_Controller_62e62e93-a6f1-4a14-97be-c57220fa1fcc__???_right-rail",
          "source": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
          "target": "right-rail-rung_Batch_Controller_62e62e93-a6f1-4a14-97be-c57220fa1fcc",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_CONTACT_375a43bd-8f34-46ba-b91e-bb32147c70ff_CONTACT_f063c4e5-4742-45a1-8ede-62fe90471ab1__output_input",
          "source": "CONTACT_375a43bd-8f34-46ba-b91e-bb32147c70ff",
          "target": "CONTACT_f063c4e5-4742-45a1-8ede-62fe90471ab1",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_f063c4e5-4742-45a1-8ede-62fe90471ab1_BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444__output_EN",
          "source": "CONTACT_f063c4e5-4742-45a1-8ede-62fe90471ab1",
          "target": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_e563859d-27bd-4739-8063-2826f0078c20_BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444__output_Current_State",
          "source": "VARIABLE_e563859d-27bd-4739-8063-2826f0078c20",
          "target": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
          "sourceHandle": "output",
          "targetHandle": "Current_State"
        },
        {
          "id": "e_VARIABLE_9f601363-60e9-4417-af8b-c73a03fe5ef3_BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444__output_Required_State",
          "source": "VARIABLE_9f601363-60e9-4417-af8b-c73a03fe5ef3",
          "target": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
          "sourceHandle": "output",
          "targetHandle": "Required_State"
        },
        {
          "id": "e_VARIABLE_fc120762-a8b6-43af-a925-684bb6d301fb_BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444__output_Next_State",
          "source": "VARIABLE_fc120762-a8b6-43af-a925-684bb6d301fb",
          "target": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
          "sourceHandle": "output",
          "targetHandle": "Next_State"
        },
        {
          "id": "e_BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444_VARIABLE_1ea91645-3aa5-4f4d-a4fa-a638abacee2d__OUT_input",
          "source": "BLOCK_1fdf8713-c6d2-4c7f-9bab-a991fbb33444",
          "target": "VARIABLE_1ea91645-3aa5-4f4d-a4fa-a638abacee2d",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_f2ee0b5b-4619-4c0c-92da-d525c06bcffb",
      "comment": "Complete",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        496,
        174
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_f2ee0b5b-4619-4c0c-92da-d525c06bcffb",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "5947867",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
          "type": "block",
          "position": {
            "x": 143,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 143,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN1",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 143,
                  "y": 130
                },
                "relPosition": {
                  "x": 0,
                  "y": 116
                },
                "id": "IN2",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 116,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 233,
                  "y": 50
                },
                "relPosition": {
                  "x": 90,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 233,
                  "y": 90
                },
                "relPosition": {
                  "x": 90,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 143,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 233,
                "y": 50
              },
              "relPosition": {
                "x": 90,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "4302831",
            "variant": {
              "name": "EQ",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "IN1",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                },
                {
                  "name": "IN2",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY_ELEMENTARY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": true,
              "category": "Comparison"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN1",
                "type": "input",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "IN2",
                "type": "input",
                "variable": {
                  "name": "6"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_Complete",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 90,
          "height": 140,
          "measured": {
            "width": 90,
            "height": 140
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_f2ee0b5b-4619-4c0c-92da-d525c06bcffb",
          "type": "powerRail",
          "position": {
            "x": 493,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 493
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7261249",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b770cbdc-71c1-4f78-8387-8241b62b0ec4",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "7715263",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
              "handleId": "IN1",
              "variableType": {
                "name": "IN1",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_41774916-9924-4793-8272-d4e0d5a5384c",
          "type": "variable",
          "position": {
            "x": 33,
            "y": 114
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 193,
                  "y": 130
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 193,
                "y": 130
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "5222611",
            "variable": {
              "name": "6"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
              "handleId": "IN2",
              "variableType": {
                "name": "IN2",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY_ELEMENTARY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_8e6d0d7c-63db-4c38-9caa-6d0a3ad933f1",
          "type": "variable",
          "position": {
            "x": 263,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 263,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 263,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "1557042",
            "variable": {
              "name": "Batch_Complete",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "BOOL"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_f2ee0b5b-4619-4c0c-92da-d525c06bcffb_BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69__left-rail_???",
          "source": "left-rail-rung_Batch_Controller_f2ee0b5b-4619-4c0c-92da-d525c06bcffb",
          "target": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
          "sourceHandle": "left-rail",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69_right-rail-rung_Batch_Controller_f2ee0b5b-4619-4c0c-92da-d525c06bcffb__???_right-rail",
          "source": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
          "target": "right-rail-rung_Batch_Controller_f2ee0b5b-4619-4c0c-92da-d525c06bcffb",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_b770cbdc-71c1-4f78-8387-8241b62b0ec4_BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69__output_IN1",
          "source": "VARIABLE_b770cbdc-71c1-4f78-8387-8241b62b0ec4",
          "target": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
          "sourceHandle": "output",
          "targetHandle": "IN1"
        },
        {
          "id": "e_VARIABLE_41774916-9924-4793-8272-d4e0d5a5384c_BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69__output_IN2",
          "source": "VARIABLE_41774916-9924-4793-8272-d4e0d5a5384c",
          "target": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
          "sourceHandle": "output",
          "targetHandle": "IN2"
        },
        {
          "id": "e_BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69_VARIABLE_8e6d0d7c-63db-4c38-9caa-6d0a3ad933f1__OUT_input",
          "source": "BLOCK_1ce3c822-d6a5-4c20-9337-f07e4b0f1e69",
          "target": "VARIABLE_8e6d0d7c-63db-4c38-9caa-6d0a3ad933f1",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_b0608b4f-5dc8-4085-8507-75989a8f2c0d",
      "comment": "Reset all eq after complete",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        795,
        120
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_b0608b4f-5dc8-4085-8507-75989a8f2c0d",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "4131312",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_829b90b3-bcd4-461b-a550-84db3e2c428e",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7187367",
            "variable": {
              "id": "",
              "name": "Batch_Complete",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_d0393cdf-879d-4ae6-84ea-d0a43ca085a1",
          "type": "coil",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 210,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 210,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 210,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6896563",
            "variable": {
              "id": "",
              "name": "Ingredient_A_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_16320fb3-d33c-4eed-a4c7-6c5dd892a74e",
          "type": "coil",
          "position": {
            "x": 300,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 300,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 328,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 300,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 328,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 300,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 328,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "2192659",
            "variable": {
              "id": "",
              "name": "Ingredient_B_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_61ece66d-9248-4597-8ac8-815a52950a00",
          "type": "coil",
          "position": {
            "x": 418,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 418,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 446,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 418,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 446,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 418,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 446,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1572517",
            "variable": {
              "id": "",
              "name": "Mixer_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_e490ee72-d4b0-48c2-aeeb-26f09d0bb1ca",
          "type": "coil",
          "position": {
            "x": 536,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 536,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 564,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 536,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 564,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 536,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 564,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "4578250",
            "variable": {
              "id": "",
              "name": "Discharge_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_a775c0c7-ae8e-48e2-85eb-4b7f1bb0be56",
          "type": "coil",
          "position": {
            "x": 654,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 654,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 682,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "reset",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 654,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 682,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 654,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 682,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7477040",
            "variable": {
              "id": "",
              "name": "Packaging_Request",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_b0608b4f-5dc8-4085-8507-75989a8f2c0d",
          "type": "powerRail",
          "position": {
            "x": 792,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 792
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "3513404",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_b0608b4f-5dc8-4085-8507-75989a8f2c0d_CONTACT_829b90b3-bcd4-461b-a550-84db3e2c428e__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_b0608b4f-5dc8-4085-8507-75989a8f2c0d",
          "target": "CONTACT_829b90b3-bcd4-461b-a550-84db3e2c428e",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_829b90b3-bcd4-461b-a550-84db3e2c428e_COIL_d0393cdf-879d-4ae6-84ea-d0a43ca085a1__output_input",
          "source": "CONTACT_829b90b3-bcd4-461b-a550-84db3e2c428e",
          "target": "COIL_d0393cdf-879d-4ae6-84ea-d0a43ca085a1",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_d0393cdf-879d-4ae6-84ea-d0a43ca085a1_COIL_16320fb3-d33c-4eed-a4c7-6c5dd892a74e__output_input",
          "source": "COIL_d0393cdf-879d-4ae6-84ea-d0a43ca085a1",
          "target": "COIL_16320fb3-d33c-4eed-a4c7-6c5dd892a74e",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_e490ee72-d4b0-48c2-aeeb-26f09d0bb1ca_COIL_a775c0c7-ae8e-48e2-85eb-4b7f1bb0be56__output_input",
          "source": "COIL_e490ee72-d4b0-48c2-aeeb-26f09d0bb1ca",
          "target": "COIL_a775c0c7-ae8e-48e2-85eb-4b7f1bb0be56",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_16320fb3-d33c-4eed-a4c7-6c5dd892a74e_COIL_61ece66d-9248-4597-8ac8-815a52950a00__output_input",
          "source": "COIL_16320fb3-d33c-4eed-a4c7-6c5dd892a74e",
          "target": "COIL_61ece66d-9248-4597-8ac8-815a52950a00",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_61ece66d-9248-4597-8ac8-815a52950a00_COIL_e490ee72-d4b0-48c2-aeeb-26f09d0bb1ca__output_input",
          "source": "COIL_61ece66d-9248-4597-8ac8-815a52950a00",
          "target": "COIL_e490ee72-d4b0-48c2-aeeb-26f09d0bb1ca",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_a775c0c7-ae8e-48e2-85eb-4b7f1bb0be56_right-rail-rung_Batch_Controller_b0608b4f-5dc8-4085-8507-75989a8f2c0d__output_right-rail",
          "source": "COIL_a775c0c7-ae8e-48e2-85eb-4b7f1bb0be56",
          "target": "right-rail-rung_Batch_Controller_b0608b4f-5dc8-4085-8507-75989a8f2c0d",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_1b175644-2def-4075-ba33-a539186bc6a5",
      "comment": "Fault",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        598,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_1b175644-2def-4075-ba33-a539186bc6a5",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "7202041",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_ed07b8b6-129c-481c-ad73-4384d947e3a5",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "5900881",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 335,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 335,
                  "y": 90
                },
                "relPosition": {
                  "x": 78,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 335,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 335,
                  "y": 90
                },
                "relPosition": {
                  "x": 78,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 335,
                "y": 50
              },
              "relPosition": {
                "x": 78,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6650128",
            "variant": {
              "name": "MOVE",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY"
                  }
                },
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": false,
              "category": "Selection"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN",
                "type": "input",
                "variable": {
                  "name": "7"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 78,
          "height": 100,
          "measured": {
            "width": 78,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_1b175644-2def-4075-ba33-a539186bc6a5",
          "type": "powerRail",
          "position": {
            "x": 595,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 595
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7343025",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_1b2f8e01-e24e-444b-85bd-c6068a127098",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "459389",
            "variable": {
              "name": "7"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822",
              "handleId": "IN",
              "variableType": {
                "name": "IN",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_b7a1bd94-693c-449b-bc3e-7c48d5d1221f",
          "type": "variable",
          "position": {
            "x": 365,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 365,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 365,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 365,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "4537213",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822_right-rail-rung_Batch_Controller_1b175644-2def-4075-ba33-a539186bc6a5__???_right-rail",
          "source": "BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822",
          "target": "right-rail-rung_Batch_Controller_1b175644-2def-4075-ba33-a539186bc6a5",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_Batch_Controller_1b175644-2def-4075-ba33-a539186bc6a5_CONTACT_ed07b8b6-129c-481c-ad73-4384d947e3a5__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_1b175644-2def-4075-ba33-a539186bc6a5",
          "target": "CONTACT_ed07b8b6-129c-481c-ad73-4384d947e3a5",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_ed07b8b6-129c-481c-ad73-4384d947e3a5_BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822__output_EN",
          "source": "CONTACT_ed07b8b6-129c-481c-ad73-4384d947e3a5",
          "target": "BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_1b2f8e01-e24e-444b-85bd-c6068a127098_BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822__output_IN",
          "source": "VARIABLE_1b2f8e01-e24e-444b-85bd-c6068a127098",
          "target": "BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822",
          "sourceHandle": "output",
          "targetHandle": "IN"
        },
        {
          "id": "e_BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822_VARIABLE_b7a1bd94-693c-449b-bc3e-7c48d5d1221f__OUT_input",
          "source": "BLOCK_a014562a-445d-4ebf-9a4d-9ffe728ff822",
          "target": "VARIABLE_b7a1bd94-693c-449b-bc3e-7c48d5d1221f",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_4e170303-18e4-4496-8f19-f1c188e61b4c",
      "comment": "Reset batch after fault",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        712,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_4e170303-18e4-4496-8f19-f1c188e61b4c",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "6119379",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_33d39672-70fd-42ab-a3be-dc51c72e086d",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "4570903",
            "variable": {
              "id": "",
              "name": "Safety_OK",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_2413d071-3ba9-45e1-851a-73b37f27ed58",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1254657",
            "variable": {
              "id": "",
              "name": "Batch_Reset",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c",
          "type": "block",
          "position": {
            "x": 371,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 90
                },
                "relPosition": {
                  "x": 78,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 371,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 371,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 449,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 449,
                  "y": 90
                },
                "relPosition": {
                  "x": 78,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 371,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 449,
                "y": 50
              },
              "relPosition": {
                "x": 78,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "3703952",
            "variant": {
              "name": "MOVE",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY"
                  }
                },
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": false,
              "category": "Selection"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN",
                "type": "input",
                "variable": {
                  "name": "0"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 78,
          "height": 100,
          "measured": {
            "width": 78,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_4e170303-18e4-4496-8f19-f1c188e61b4c",
          "type": "powerRail",
          "position": {
            "x": 709,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 709
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "6849320",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_10b9c697-b270-4eaa-bcb9-884a02592da3",
          "type": "variable",
          "position": {
            "x": 261,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 421,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 421,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "3755157",
            "variable": {
              "name": "0"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c",
              "handleId": "IN",
              "variableType": {
                "name": "IN",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_af5edc9f-09ee-4115-a08a-5a434cd9e23d",
          "type": "variable",
          "position": {
            "x": 479,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 479,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 479,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "4876811",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_4e170303-18e4-4496-8f19-f1c188e61b4c_CONTACT_33d39672-70fd-42ab-a3be-dc51c72e086d__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_4e170303-18e4-4496-8f19-f1c188e61b4c",
          "target": "CONTACT_33d39672-70fd-42ab-a3be-dc51c72e086d",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_33d39672-70fd-42ab-a3be-dc51c72e086d_CONTACT_2413d071-3ba9-45e1-851a-73b37f27ed58__output_input",
          "source": "CONTACT_33d39672-70fd-42ab-a3be-dc51c72e086d",
          "target": "CONTACT_2413d071-3ba9-45e1-851a-73b37f27ed58",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_2413d071-3ba9-45e1-851a-73b37f27ed58_BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c__output_???",
          "source": "CONTACT_2413d071-3ba9-45e1-851a-73b37f27ed58",
          "target": "BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c_right-rail-rung_Batch_Controller_4e170303-18e4-4496-8f19-f1c188e61b4c__???_right-rail",
          "source": "BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c",
          "target": "right-rail-rung_Batch_Controller_4e170303-18e4-4496-8f19-f1c188e61b4c",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_10b9c697-b270-4eaa-bcb9-884a02592da3_BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c__output_IN",
          "source": "VARIABLE_10b9c697-b270-4eaa-bcb9-884a02592da3",
          "target": "BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c",
          "sourceHandle": "output",
          "targetHandle": "IN"
        },
        {
          "id": "e_BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c_VARIABLE_af5edc9f-09ee-4115-a08a-5a434cd9e23d__OUT_input",
          "source": "BLOCK_68497c2f-42eb-467e-b3ee-94eedfa6517c",
          "target": "VARIABLE_af5edc9f-09ee-4115-a08a-5a434cd9e23d",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_Batch_Controller_9af8b31e-14de-4272-a13f-3cd98e0f5c59",
      "comment": "Batch stop",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        598,
        134
      ],
      "nodes": [
        {
          "id": "left-rail-rung_Batch_Controller_9af8b31e-14de-4272-a13f-3cd98e0f5c59",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "2250188",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_88988b00-1af7-4dbf-aecd-64f06442e370",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "5787059",
            "variable": {
              "id": "",
              "name": "Batch_Stop",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e",
          "type": "block",
          "position": {
            "x": 257,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 335,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 335,
                  "y": 90
                },
                "relPosition": {
                  "x": 78,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 257,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 257,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "IN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 335,
                  "y": 50
                },
                "relPosition": {
                  "x": 78,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 335,
                  "y": 90
                },
                "relPosition": {
                  "x": 78,
                  "y": 76
                },
                "id": "OUT",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 257,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 335,
                "y": 50
              },
              "relPosition": {
                "x": 78,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6072056",
            "variant": {
              "name": "MOVE",
              "type": "function",
              "language": "st",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "OUT",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY"
                  }
                },
                {
                  "name": "IN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "ANY"
                  }
                }
              ],
              "body": "",
              "documentation": "",
              "extensible": false,
              "category": "Selection"
            },
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": false,
            "connectedVariables": [
              {
                "handleId": "IN",
                "type": "input",
                "variable": {
                  "name": "0"
                }
              },
              {
                "handleId": "OUT",
                "type": "output",
                "variable": {
                  "name": "Batch_State_Code",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 78,
          "height": 100,
          "measured": {
            "width": 78,
            "height": 100
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_Batch_Controller_9af8b31e-14de-4272-a13f-3cd98e0f5c59",
          "type": "powerRail",
          "position": {
            "x": 595,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 595
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "8418940",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_589a2486-73c3-4f63-b687-2899e47cecfb",
          "type": "variable",
          "position": {
            "x": 147,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 307,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 307,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "3795116",
            "variable": {
              "name": "0"
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e",
              "handleId": "IN",
              "variableType": {
                "name": "IN",
                "class": "input",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_5272fc2a-a3cb-4532-b28d-8d96b38a6a4c",
          "type": "variable",
          "position": {
            "x": 365,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 365,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 365,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 365,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "9514812",
            "variable": {
              "name": "Batch_State_Code",
              "class": "local",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e",
              "handleId": "OUT",
              "variableType": {
                "name": "OUT",
                "class": "output",
                "type": {
                  "definition": "generic-type",
                  "value": "ANY"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_left-rail-rung_Batch_Controller_9af8b31e-14de-4272-a13f-3cd98e0f5c59_CONTACT_88988b00-1af7-4dbf-aecd-64f06442e370__left-rail_input",
          "source": "left-rail-rung_Batch_Controller_9af8b31e-14de-4272-a13f-3cd98e0f5c59",
          "target": "CONTACT_88988b00-1af7-4dbf-aecd-64f06442e370",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_88988b00-1af7-4dbf-aecd-64f06442e370_BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e__output_???",
          "source": "CONTACT_88988b00-1af7-4dbf-aecd-64f06442e370",
          "target": "BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e_right-rail-rung_Batch_Controller_9af8b31e-14de-4272-a13f-3cd98e0f5c59__???_right-rail",
          "source": "BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e",
          "target": "right-rail-rung_Batch_Controller_9af8b31e-14de-4272-a13f-3cd98e0f5c59",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_VARIABLE_589a2486-73c3-4f63-b687-2899e47cecfb_BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e__output_IN",
          "source": "VARIABLE_589a2486-73c3-4f63-b687-2899e47cecfb",
          "target": "BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e",
          "sourceHandle": "output",
          "targetHandle": "IN"
        },
        {
          "id": "e_BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e_VARIABLE_5272fc2a-a3cb-4532-b28d-8d96b38a6a4c__OUT_input",
          "source": "BLOCK_2e753fb0-2eb7-4555-8c44-0d17e27c9d3e",
          "target": "VARIABLE_5272fc2a-a3cb-4532-b28d-8d96b38a6a4c",
          "sourceHandle": "OUT",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    }
  ]
}
END_PROGRAM