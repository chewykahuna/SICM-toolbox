function generate_menu(self)
% Generates the entries for the main menu. The menu entries are saved in a
% struct, where `key' is the label of the menu entry. The `value' is a cell
% array(*) of cell arrays. The latter consisting of 
%  1: (optional) the menu entry label
%  2: (optional) the callback
%  3: (optional) an accelerator
% 
% If a cell array is empty, the preveious entry will be decorated with a
% separator. 
%
% (*): Note that since the struct function removes one level of nesting of
% cell arrays, the values are enclosed in two curly braces.
%

    manipulate_menu = make_manipulate_menu_local();

    self.menu_data = struct(...
    ... % File Menu
        'File', {{...
            {'&New', @self.onMenu_File_New, 'n'},...
            {'&Open', @self.onMenu_File_Open, 'o'},... 
            {'&Save', @self.onMenu_File_Save, 's'},... 
            {'Save &as', @self.onMenu_File_SaveAs },...
            {},...
            {'&Export', @self.onMenu_File_Export, 'e'},...
            {'&Import from file', @self.onMenu_File_ImportFromFile,...
                'i'},...
            {'I&mport from workspace', ...
                @self.onMenu_File_ImportFromWorkspace, 'm'},...
            {},...
            {'&Close', @self.onMenu_File_Close, 'w'},...
            {'&Quit', @self.onMenu_File_Quit, 'q'}...
        }}, ...
        ... % View Menu
        'View', {{...
            {'&One Axis', @self.onMenu_View_OneAxis},...
            {'Two Axes (&vertical)', ...
                @self.onMenu_View_TwoAxis_vertical},...
            {'Two Axes (&horizontal)', ...
                @self.onMenu_View_TwoAxis_horizontal},...
            {'one &large axis (top), two small axes (bottom)', ...
                @self.onMenu_View_OneLargeAxis_top_twoSmallAxis_bottom},...
            {'&2 x 2', @self.onMenu_View_2x2},...
            {'&3 x 3', @self.onMenu_View_3x3}...
        }},...
        'Manipulate', {{}},...
        'Settings', {{}}, ...
        'Help', {{...    
            {'&User Documentation'}...
            {'&Developer Documentation'}...
            {}...
            {'About'}...
        }}...
    );
end
        
function m = make_manipulate_menu_local()
    
end