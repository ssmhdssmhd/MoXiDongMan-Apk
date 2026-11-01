.class public Lcom/wsw/cospa/widget/ClickEventDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/wsw/cospa/widget/ClickEventDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog_ViewBinding;->target:Lcom/wsw/cospa/widget/ClickEventDialog;

    .line 3
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090276

    const-string v2, "field \'ll_click_event\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090290

    const-string v2, "field \'ll_up_down_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_up_down_tips:Landroid/widget/LinearLayout;

    .line 5
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090239

    const-string v2, "field \'iv_close_up_down_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090284

    const-string v2, "field \'ll_left_right_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_left_right_tips:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090238

    const-string v2, "field \'iv_close_left_right_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a1

    const-string v2, "field \'event_left\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->event_left:Landroid/widget/Button;

    .line 9
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a2

    const-string v2, "field \'event_middle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->event_middle:Landroid/widget/Button;

    .line 10
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a3

    const-string v2, "field \'event_right\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->event_right:Landroid/widget/Button;

    .line 11
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090386

    const-string v2, "field \'scroll_mode_event_up_down\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090385

    const-string v2, "field \'scroll_mode_event_left_right\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog_ViewBinding;->target:Lcom/wsw/cospa/widget/ClickEventDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/widget/ClickEventDialog_ViewBinding;->target:Lcom/wsw/cospa/widget/ClickEventDialog;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_up_down_tips:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_left_right_tips:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->event_left:Landroid/widget/Button;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->event_middle:Landroid/widget/Button;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->event_right:Landroid/widget/Button;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
