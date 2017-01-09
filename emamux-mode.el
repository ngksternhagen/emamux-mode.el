;; a minor mode for interacting with termux, via emamux

;; keybindings

(define-minor-mode emamux-mode
  "interact with tmux via emamux"
  (require 'emacs-emamux)
  (require 'emamux-run-line)
  (require 'emamux-paste)
  (require 'hydra)
  :lighter " emamux"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-c e c c") 'emamux:clone-current-frame)
            (define-key map (kbd "C-c e c k r") 'emamux:copy-kill-ring)
            (define-key map (kbd "C-c e c p") 'emamux:close-panes)
            (define-key map (kbd "C-c e c r h") 'emamux:clear-runner-history)
            (define-key map (kbd "C-c e c r p") 'emamux:close-runner-pane)
            (define-key map (kbd "C-c e i r") 'emamux:interrupt-runner)
            (define-key map (kbd "C-c e k s") 'emamux:kill-session)
            (define-key map (kbd "C-c e n w") 'emamux:new-window)
            (define-key map (kbd "C-c e p") 'emamux-paste)
            (define-key map (kbd "C-c e r c") 'emamux:run-command)
            (define-key map (kbd "C-c e r l c") 'emamux:run-last-command)
            (define-key map (kbd "C-c e r l") 'emamux-run-line)
            (define-key map (kbd "C-c e r r") 'emamux:run-region)
            (define-key map (kbd "C-c e s h") 'emamux:split-window-horizontally)
            (define-key map (kbd "C-c e s v") 'emamux:split-window)
            (define-key map (kbd "C-c e y b") 'emamux:yank-from-list-buffers)
            (define-key map (kbd "C-c e z r") 'emamux:zoom-runner)
            map))

;; TODO optionally use hydra?
