;;;Copyright (c) 2013 Wilfredo Velázquez-Rodríguez
;;;
;;;This software is provided 'as-is', without any express or implied
;;;warranty. In no event will the authors be held liable for any damages
;;;arising from the use of this software.
;;;
;;;Permission is granted to anyone to use this software for any purpose,
;;;including commercial applications, and to alter it and redistribute
;;;it freely, subject to the following restrictions:
;;;
;;;1. The origin of this software must not be misrepresented; you must not
;;;   claim that you wrote the original software. If you use this software
;;;   in a product, an acknowledgment in the product documentation would
;;;   be appreciated but is not required.
;;;
;;;2. Altered source versions must be plainly marked as such, and must not
;;;   be misrepresented as being the original software.
;;;
;;;3. This notice may not be removed or altered from any source distribution.

(defpackage #:win32
  (:use #:cffi #:cl)
  (:shadow
   #:atom
   #:boolean
   #:byte
   #:char
   #:float)
  (:export
   #:+win32-string-encoding+

   #:char
   #:uchar
   #:wchar

   #:int
   #:int-ptr
   #:int8
   #:int16
   #:int32
   #:int64

   #:uint
   #:uint-ptr
   #:uint8
   #:uint16
   #:uint32
   #:uint64

   #:long
   #:longlong
   #:long-ptr
   #:long32
   #:long64

   #:ulong
   #:ulonglong
   #:ulong-ptr
   #:ulong32
   #:ulong64

   #:short
   #:ushort

   #:byte
   #:word
   #:dword
   #:dwordlong
   #:dword-ptr
   #:dword32
   #:dword64
   #:qword

   #:bool
   #:boolean

   #:tbyte
   #:tchar

   #:float

   #:size-t
   #:ssize-t

   #:lpcstr
   #:lpcwstr
   #:lpstr
   #:lpwstr
   #:pcstr
   #:pcwstr
   #:pstr
   #:pwstr

   #:handle

   #:atom
   #:half-ptr
   #:uhalf-ptr
   #:colorref
   #:haccel
   #:hbitmap
   #:hbrush
   #:hcolorspace
   #:hconv
   #:hconvlist
   #:hcursor
   #:hdc
   #:hddedata
   #:hdesk
   #:hdrop
   #:hdwp
   #:henhmetafile
   #:hfile
   #:hfont
   #:hgdiobj
   #:hglobal
   #:hhook
   #:hicon
   #:hinstance
   #:hkey
   #:hkl
   #:hlocal
   #:hmenu
   #:hmetafile
   #:hmodule
   #:hmonitor
   #:hpalette
   #:hpen
   #:hresult
   #:hrgn
   #:hrsrc
   #:hsz
   #:hwinsta
   #:hwnd
   #:langid
   #:lcid
   #:lgrpid
   #:lparam
   #:lpctstr
   #:lptstr
   #:lresult
   #:pctstr
   #:ptstr
   #:sc-handle
   #:sc-lock
   #:service-status-handle
   #:usn
   #:wparam

   #:+create-new+
   #:+create-always+
   #:+open-existing+
   #:+open-always+
   #:+truncate-existing+

   #:+pfd-type-rgba+
   #:+pfd-type-colorindex+

   #:+pfd-main-plane+
   #:+pfd-overlay-plane+
   #:+pfd-underlay-plane+

   #:+pfd-doublebuffer+
   #:+pfd-stereo+
   #:+pfd-draw-to-window+
   #:+pfd-draw-to-bitmap+
   #:+pfd-support-gdi+
   #:+pfd-support-opengl+
   #:+pfd-generic-format+
   #:+pfd-need-palette+
   #:+pfd-need-system-palette+
   #:+pfd-swap-exchange+
   #:+pfd-swap-copy+
   #:+pfd-swap-layer-buffers+
   #:+pfd-generic-accelerated+
   #:+pfd-support-directdraw+
   #:+pfd-direct3d-accelerated+
   #:+pfd-support-composition+
   #:+pfd-depth-dontcare+
   #:+pfd-doublebuffer-dontcare+
   #:+pfd-stereo-dontcare+

   ;;Window Styles
   #:+ws-overlapped+
   #:+ws-popup+
   #:+ws-child+
   #:+ws-visible+
   #:+ws-caption+
   #:+ws-border+
   #:+ws-tabstop+
   #:+ws-maximizebox+
   #:+ws-minimizebox+
   #:+ws-thickframe+
   #:+ws-sysmenu+
   #:+ws-overlappedwindow+

   ;;Window ex styles
   #:+ws-ex-left+
   #:+ws-ex-ltrreading+
   #:+ws-ex-rightscrollbar+
   #:+ws-ex-dlgmodalframe+
   #:+ws-ex-noparentnotify+
   #:+ws-ex-topmost+
   #:+ws-ex-acceptfiles+
   #:+ws-ex-transparent+
   #:+ws-ex-mdichild+
   #:+ws-ex-toolwindow+
   #:+ws-ex-windowedge+
   #:+ws-ex-clientedge+
   #:+ws-ex-contexthelp+
   #:+ws-ex-right+
   #:+ws-ex-rtlreading+
   #:+ws-ex-leftscrollbar+
   #:+ws-ex-controlparent+
   #:+ws-ex-staticedge+
   #:+ws-ex-appwindow+
   #:+ws-ex-noinheritlayout+
   #:+ws-ex-noredirectionbitmap+
   #:+ws-ex-layoutrtl+
   #:+ws-ex-composited+
   #:+ws-ex-noactivate+

   ;;Edit control types
   #:+es-left+
   #:+es-center+
   #:+es-right+

   #:+wm-null+
   #:+wm-create+
   #:+wm-destroy+
   #:+wm-move+
   #:+wm-size+
   #:+wm-activate+
   #:+wm-setfocus+
   #:+wm-killfocus+
   #:+wm-enable+
   #:+wm-setredraw+
   #:+wm-settext+
   #:+wm-gettext+
   #:+wm-gettextlength+
   #:+wm-paint+
   #:+wm-close+
   #:+wm-queryendsession+
   #:+wm-quit+
   #:+wm-queryopen+
   #:+wm-erasebkgnd+
   #:+wm-syscolorchange+
   #:+wm-endsession+
   #:+wm-systemerror+
   #:+wm-showwindow+
   #:+wm-ctlcolor+
   #:+wm-wininichange+
   #:+wm-settingchange+
   #:+wm-devmodechange+
   #:+wm-activateapp+
   #:+wm-fontchange+
   #:+wm-timechange+
   #:+wm-cancelmode+
   #:+wm-setcursor+
   #:+wm-mouseactivate+
   #:+wm-childactivate+
   #:+wm-queuesync+
   #:+wm-getminmaxinfo+
   #:+wm-painticon+
   #:+wm-iconerasebkgnd+
   #:+wm-nextdlgctl+
   #:+wm-spoolerstatus+
   #:+wm-drawitem+
   #:+wm-measureitem+
   #:+wm-deleteitem+
   #:+wm-vkeytoitem+
   #:+wm-chartoitem+
   #:+wm-setfont+
   #:+wm-getfont+
   #:+wm-sethotkey+
   #:+wm-gethotkey+
   #:+wm-querydragicon+
   #:+wm-compareitem+
   #:+wm-compacting+
   #:+wm-windowposchanging+
   #:+wm-windowposchanged+
   #:+wm-power+
   #:+wm-copydata+
   #:+wm-canceljournal+
   #:+wm-notify+
   #:+wm-inputlangchangerequest+
   #:+wm-inputlangchange+
   #:+wm-tcard+
   #:+wm-help+
   #:+wm-userchanged+
   #:+wm-notifyformat+
   #:+wm-contextmenu+
   #:+wm-stylechanging+
   #:+wm-stylechanged+
   #:+wm-displaychange+
   #:+wm-geticon+
   #:+wm-seticon+
   #:+wm-nccreate+
   #:+wm-ncdestroy+
   #:+wm-nccalcsize+
   #:+wm-nchittest+
   #:+wm-ncpaint+
   #:+wm-ncactivate+
   #:+wm-getdlgcode+
   #:+wm-syncpaint+
   #:+wm-ncmousemove+
   #:+wm-nclbuttondown+
   #:+wm-nclbuttonup+
   #:+wm-nclbuttondblclk+
   #:+wm-ncrbuttondown+
   #:+wm-ncrbuttonup+
   #:+wm-ncrbuttondblclk+
   #:+wm-ncmbuttondown+
   #:+wm-ncmbuttonup+
   #:+wm-ncmbuttondblclk+
   #:+wm-keyfirst+
   #:+wm-keydown+
   #:+wm-keyup+
   #:+wm-char+
   #:+wm-deadchar+
   #:+wm-syskeydown+
   #:+wm-syskeyup+
   #:+wm-syschar+
   #:+wm-sysdeadchar+
   #:+wm-keylast+
   #:+wm-ime_startcomposition+
   #:+wm-ime_endcomposition+
   #:+wm-ime_composition+
   #:+wm-ime_keylast+
   #:+wm-initdialog+
   #:+wm-command+
   #:+wm-syscommand+
   #:+wm-timer+
   #:+wm-hscroll+
   #:+wm-vscroll+
   #:+wm-initmenu+
   #:+wm-initmenupopup+
   #:+wm-menuselect+
   #:+wm-menuchar+
   #:+wm-enteridle+
   #:+wm-ctlcolormsgbox+
   #:+wm-ctlcoloredit+
   #:+wm-ctlcolorlistbox+
   #:+wm-ctlcolorbtn+
   #:+wm-ctlcolordlg+
   #:+wm-ctlcolorscrollbar+
   #:+wm-ctlcolorstatic+
   #:+wm-mousefirst+
   #:+wm-mousemove+
   #:+wm-lbuttondown+
   #:+wm-lbuttonup+
   #:+wm-lbuttondblclk+
   #:+wm-rbuttondown+
   #:+wm-rbuttonup+
   #:+wm-rbuttondblclk+
   #:+wm-mbuttondown+
   #:+wm-mbuttonup+
   #:+wm-mbuttondblclk+
   #:+wm-mousewheel+
   #:+wm-mousehwheel+
   #:+wm-parentnotify+
   #:+wm-entermenuloop+
   #:+wm-exitmenuloop+
   #:+wm-nextmenu+
   #:+wm-sizing+
   #:+wm-capturechanged+
   #:+wm-moving+
   #:+wm-powerbroadcast+
   #:+wm-devicechange+
   #:+wm-mdicreate+
   #:+wm-mdidestroy+
   #:+wm-mdiactivate+
   #:+wm-mdirestore+
   #:+wm-mdinext+
   #:+wm-mdimaximize+
   #:+wm-mditile+
   #:+wm-mdicascade+
   #:+wm-mdiiconarrange+
   #:+wm-mdigetactive+
   #:+wm-mdisetmenu+
   #:+wm-entersizemove+
   #:+wm-exitsizemove+
   #:+wm-dropfiles+
   #:+wm-mdirefreshmenu+
   #:+wm-ime-setcontext+
   #:+wm-ime-notify+
   #:+wm-ime-control+
   #:+wm-ime-compositionfull+
   #:+wm-ime-select+
   #:+wm-ime-char+
   #:+wm-ime-keydown+
   #:+wm-ime-keyup+
   #:+wm-mousehover+
   #:+wm-ncmouseleave+
   #:+wm-mouseleave+
   #:+wm-cut+
   #:+wm-copy+
   #:+wm-paste+
   #:+wm-clear+
   #:+wm-undo+
   #:+wm-renderformat+
   #:+wm-renderallformats+
   #:+wm-destroyclipboard+
   #:+wm-drawclipboard+
   #:+wm-paintclipboard+
   #:+wm-vscrollclipboard+
   #:+wm-sizeclipboard+
   #:+wm-askcbformatname+
   #:+wm-changecbchain+
   #:+wm-hscrollclipboard+
   #:+wm-querynewpalette+
   #:+wm-paletteischanging+
   #:+wm-palettechanged+
   #:+wm-hotkey+
   #:+wm-print+
   #:+wm-printclient+
   #:+wm-handheldfirst+
   #:+wm-handheldlast+
   #:+wm-penwinfirst+
   #:+wm-penwinlast+
   #:+wm-coalesce_first+
   #:+wm-coalesce_last+
   #:+wm-dde-first+
   #:+wm-dde-initiate+
   #:+wm-dde-terminate+
   #:+wm-dde-advise+
   #:+wm-dde-unadvise+
   #:+wm-dde-ack+
   #:+wm-dde-data+
   #:+wm-dde-request+
   #:+wm-dde-poke+
   #:+wm-dde-execute+
   #:+wm-dde-last+
   #:+wm-user+
   #:+wm-app+

   #:+time-cancel+
   #:+time-hover+
   #:+time-leave+
   #:+time-nonclient+
   #:+time-query+

   #:+cw-usedefault+

   #:+cs-vredraw+
   #:+cs-hredraw+
   #:+cs-owndc+

   #:+sw-show+

   #:+idi-application+
   #:+idc-arrow+

   #:+white-brush+
   #:+black-brush+
   #:+dc-brush+

   #:+gcl-hbrbackground+
   #:+gcl-wndproc+
   #:+gcw-atom+

   #:+gwl-wndproc+
   #:+gwl-id+
   #:+gwl-style+
   #:+gwl-userdata+

   #:+swp-nosize+
   #:+swp-nomove+
   #:+swp-nozorder+
   #:+swp-noactivate+
   #:+swp-showwindow+
   #:+swp-hidewindow+
   #:+swp-noownerzorder+
   #:+swp-noreposition+

   #:+infinite+

   #:+wait-object-0+
   #:+wait-abandoned+
   #:+wait-timeout+
   #:+wait-failed+

   #:+hwnd-top+
   #:+hwnd-bottom+
   #:+hwnd-message+
   #:+hwnd-notopmost+
   #:+hwnd-topmost+

   #:+winevent-outofcontext+
   #:+winevent-skipownthread+
   #:+winevent-skipownprocess+
   #:+winevent-incontext+

   #:+wh-mouse+
   #:+wh-mouse-ll+

   #:+delete+
   #:+read-control+
   #:+write-dac+
   #:+write-owner+
   #:+synchronize+

   #:+standard-rights-required+

   #:+standard-rights-read+
   #:+standard-rights-write+
   #:+standard-rights-execute+

   #:+standard-rights-all+
   #:+specific-rights-all+

   #:+desktop-createmenu+
   #:+desktop-createwindow+
   #:+desktop-enumerate+
   #:+desktop-hookcontrol+
   #:+desktop-journalplayback+
   #:+desktop-journalrecord+
   #:+desktop-readobjects+
   #:+desktop-switchdesktop+
   #:+desktop-writeobjects+

   #:+generic-read+
   #:+generic-write+
   #:+generic-execute+
   #:+generic-all+

   #:+movefile-replace-existing+
   #:+movefile-copy-allowed+
   #:+movefile-delay-until-reboot+
   #:+movefile-write-through+
   #:+movefile-create-hardlink+
   #:+movefile-fail-if-not-trackable+

   #:+copy-file-fail-if-exists+
   #:+copy-file-restartable+
   #:+copy-file-open-source-for-write+
   #:+copy-file-allow-decrypted-destination+
   #:+copy-file-copy-symlink+
   #:+copy-file-no-buffering+

   #:+hkey-classes-root+
   #:+hkey-current-user+
   #:+hkey-local-machine+
   #:+hkey-users+
   #:+hkey-performance-data+
   #:+hkey-current-config+
   #:+hkey-dyn-data+
   #:+hkey-performance-text+
   #:+hkey-performance-nlstext+

   #:+reg-none+
   #:+reg-sz+
   #:+reg-expand-sz+
   #:+reg-binary+
   #:+reg-dword+
   #:+reg-dword-little-endian+
   #:+reg-dword-big-endian+
   #:+reg-link+
   #:+reg-multi-sz+
   #:+reg-resource-list+
   #:+reg-full-resource-descriptor+
   #:+reg-resource-requirements-list+
   #:+reg-qword+
   #:+reg-qword-little-endian+

   #:+rrf-rt-any+
   #:+rrf-rt-dword+
   #:+rrf-rt-qword+
   #:+rrf-rt-reg-binary+
   #:+rrf-rt-reg-dword+
   #:+rrf-rt-reg-expand-sz+
   #:+rrf-rt-reg-multi-sz+
   #:+rrf-rt-reg-none+
   #:+rrf-rt-reg-qword+
   #:+rrf-rt-reg-sz+

   #:+rrf-noexpand+
   #:+rrf-zeroonfailure+
   #:+rrf-subkey-wow6464key+
   #:+rrf-subkey-wow6432key+

   #:+reg-option-reserved+
   #:+reg-option-backup-restore+
   #:+reg-option-create-link+
   #:+reg-option-non-volatile+
   #:+reg-option-volatile+
   #:+reg-option-open-link+

   #:+reg-created-new-key+
   #:+reg-opened-existing-key+

   #:+key-all-access+
   #:+key-create-link+
   #:+key-create-sub-key+
   #:+key-enumerate-sub-keys+
   #:+key-execute+
   #:+key-notify+
   #:+key-query-value+
   #:+key-read+
   #:+key-set-value+
   #:+key-wow64-32key+
   #:+key-wow64-64key+
   #:+key-write+

   #:+color-3ddkshadow+
   #:+color-3dface+
   #:+color-3dhighlight+
   #:+color-3dhilight+
   #:+color-3dlight+
   #:+color-3dshadow+
   #:+color-activeborder+
   #:+color-activecaption+
   #:+color-appworkspace+
   #:+color-background+
   #:+color-btnface+
   #:+color-btnhighlight+
   #:+color-btnhilight+
   #:+color-btnshadow+
   #:+color-btntext+
   #:+color-captiontext+
   #:+color-desktop+
   #:+color-gradientactivecaption+
   #:+color-gradientinactivecaption+
   #:+color-graytext+
   #:+color-highlight+
   #:+color-highlighttext+
   #:+color-hotlight+
   #:+color-inactiveborder+
   #:+color-inactivecaption+
   #:+color-inactivecaptiontext+
   #:+color-infobk+
   #:+color-infotext+
   #:+color-menu+
   #:+color-menuhilight+
   #:+color-menubar+
   #:+color-menutext+
   #:+color-scrollbar+
   #:+color-window+
   #:+color-windowframe+
   #:+color-windowtext+

   #:+smto-abortifhung+
   #:+smto-block+
   #:+smto-normal+
   #:+smto-notimeoutifnothung+
   #:+smto-erroronexit+

   #:+bsf-allowsfw+
   #:+bsf-flushdisk+
   #:+bsf-forceifhung+
   #:+bsf-ignorecurrenttask+
   #:+bsf-luid+
   #:+bsf-nohang+
   #:+bsf-notimeoutifnothung+
   #:+bsf-postmessage+
   #:+bsf-returnhdesk+
   #:+bsf-query+
   #:+bsf-sendnotifymessage+

   #:+bsm-allcomponents+
   #:+bsm-alldesktops+
   #:+bsm-applications+

   #:+ismex-callback+
   #:+ismex-notify+
   #:+ismex-replied+
   #:+ismex-send+

   #:unicode-string
   #:length
   #:maximum-length
   #:buffer

   #:luid
   #:low-part
   #:high-part

   #:bsminfo
   #:size
   #:hdesk
   #:hwnd
   #:luid

   #:logpalette
   #:paletteentry
   #:paintstruct
   #:pixelformatdescriptor
   #:point
   #:rect
   #:security-attributes
   #:trackmouseevent
   #:wndclass
   #:wndclassex
   #:msg
   #:createstruct
   #:overlapped

   #:dc
   #:erase
   #:paint
   #:restore
   #:incupdate
   #:rgbreserved

   #:num-entries
   #:palette-entries

   #:red
   #:green
   #:blue

   #:x
   #:y

   #:left
   #:top
   #:right
   #:bottom

   #:cbsize
   #:flags
   #:hwnd
   #:hover-time
   #:style
   #:wndproc
   #:clsextra
   #:wndextra
   #:instance
   #:icon
   #:cursor
   #:background
   #:menu-name
   #:wndclass-name
   #:iconsm

   #:size
   #:version
   #:pixel-type
   #:color-bits
   #:red-bits
   #:red-shift
   #:green-bits
   #:green-shift
   #:blue-bits
   #:blue-shift
   #:alpha-bits
   #:alpha-shift
   #:accum-bits
   #:accum-red-bits
   #:accum-green-bits
   #:accum-blue-bits
   #:accum-alpha-bits
   #:depth-bits
   #:stencil-bits
   #:aux-buffers
   #:layer-type
   #:reserved
   #:layer-mask
   #:visible-mask
   #:damage-mask

   #:message
   #:wparam
   #:lparam
   #:time

   #:create-params
   #:instance
   #:menu
   #:parent
   #:cy
   #:cx
   #:name
   #:class
   #:exstyle

   #:internal
   #:internal-high
   #:offset
   #:offset-high
   #:event

   #:beep
   #:begin-paint
   #:broadcast-system-message
   #:broadcast-system-message-ex
   #:call-next-hook
   #:cancel-io
   #:choose-pixel-format
   #:client-to-screen
   #:clip-cursor
   #:close-handle
   #:close-window
   #:copy-file
   #:copy-file-ex
   #:create-desktop
   #:create-event
   #:create-file
   #:create-mutex
   #:create-palette
   #:create-semaphore
   #:create-window-ex
   #:def-window-proc
   #:delete-object
   #:describe-pixel-format
   #:destroy-cursor
   #:destroy-window
   #:dispatch-message
   #:enable-window
   #:end-paint
   #:enum-windows
   #:find-window
   #:get-class-long
   #:get-class-long-ptr
   #:get-class-word
   #:get-client-rect
   #:get-command-line
   #:get-current-process
   #:get-current-process-id
   #:get-current-processor-number
   #:get-current-thread-id
   #:get-dc
   #:get-desktop-window
   #:get-input-state
   #:get-last-error
   #:get-message
   #:get-message-exta-info
   #:get-message-pos
   #:get-message-time
   #:get-module-handle
   #:get-overlapped-result
   #:get-parent
   #:get-pixel-format
   #:get-queue-status
   #:get-shell-window
   #:get-stock-object
   #:get-sys-color
   #:get-top-window
   #:get-window-long
   #:get-window-rect
   #:get-window-text
   #:get-window-thread-process-id
   #:in-send-message
   #:in-send-message-ex
   #:invalidate-rect
   #:is-gui-thread
   #:is-window
   #:load-cursor
   #:load-cursor-from-file
   #:load-icon
   #:move-file
   #:move-file-ex
   #:open-event
   #:open-input-desktop
   #:peek-message
   #:post-message
   #:post-quit-message
   #:post-thread-message
   #:read-file
   #:realize-palette
   #:reg-close-key
   #:reg-create-key
   #:reg-create-key-ex
   #:reg-delete-key
   #:reg-delete-key-ex
   #:reg-delete-tree
   #:reg-get-value
   #:reg-open-key
   #:reg-open-key-ex
   #:reg-query-value
   #:reg-query-value-ex
   #:reg-set-value
   #:reg-set-value-ex
   #:register-class
   #:register-class-ex
   #:register-window-message
   #:release-dc
   #:reply-message
   #:reset-event
   #:resize-palette
   #:rgb
   #:select-palette
   #:send-message
   #:send-message-callback
   #:send-message-timeout
   #:send-notify-message
   #:set-class-long
   #:set-class-long-ptr
   #:set-class-word
   #:set-cursor
   #:set-cursor-pos
   #:set-event
   #:set-foreground-window
   #:set-layered-window-attributes
   #:set-message-extra-info
   #:set-parent
   #:set-pixel-format
   #:set-win-event-hook
   #:set-window-long
   #:set-window-pos
   #:set-window-text
   #:set-windows-hook-ex
   #:show-cursor
   #:show-window
   #:swap-buffers
   #:switch-desktop
   #:track-mouse-event
   #:translate-message
   #:unregister-class
   #:update-window
   #:validate-rect
   #:wait-for-single-object
   #:wgl-create-context
   #:wgl-delete-context
   #:wgl-make-current
   #:window-from-point
   #:write-file))
