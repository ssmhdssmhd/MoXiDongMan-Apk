.class public Lcom/wsw/cospa/activity/ThemeConfigActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public ll_dark_mode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027e
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035c
    .end annotation
.end field

.field public swAutoNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e3
    .end annotation
.end field

.field public switch_drak_mode:Lcom/wsw/cospa/widget/view/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ee
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static import(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ThemeConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0047

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const-string v0, "systemMode"

    const-string v1, "activity class "

    const-string v2, "activityStack size : "

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f0903ee

    if-ne p1, v6, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result p1

    xor-int/2addr p1, v4

    const-class p2, Lcom/wsw/cospa/activity/ThemeConfigActivity;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/base/BaseActivity;->throw(ZLjava/lang/Class;)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Landroid/support/v4/q;->do()Landroid/support/v4/q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/q;->final()Ljava/util/Stack;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 6
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ThemeConfigActivity switch_drak_mode"

    invoke-static {v8, v7}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/wsw/cospa/activity/ThemeConfigActivity;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 9
    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 10
    invoke-virtual {v6, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 11
    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const v6, 0x7f0903e3

    if-ne p1, v6, :cond_7

    .line 12
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 13
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "nightTheme"

    invoke-virtual {p1, v0, v5}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    if-eqz p2, :cond_6

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    invoke-static {}, Lcom/wsw/cospa/base/BaseActivity;->class()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_2

    :cond_3
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 16
    invoke-static {}, Landroid/support/v4/q;->do()Landroid/support/v4/q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/q;->final()Ljava/util/Stack;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p2

    .line 18
    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 19
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThemeConfigActivity swAutoNightTheme true"

    invoke-static {v7, v6}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/wsw/cospa/activity/ThemeConfigActivity;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v6

    invoke-static {}, Lcom/wsw/cospa/base/BaseActivity;->class()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 23
    invoke-virtual {v0, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_3

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    invoke-static {}, Landroid/support/v4/q;->do()Landroid/support/v4/q;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/q;->final()Ljava/util/Stack;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p2

    .line 28
    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 29
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ThemeConfigActivity swAutoNightTheme false"

    invoke-static {v6, v3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 32
    invoke-virtual {v0, v5, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 33
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_5

    :cond_7
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public this()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 7
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "systemMode"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->swAutoNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/widget/view/SwitchButton;->setChecked(Z)V

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->switch_drak_mode:Lcom/wsw/cospa/widget/view/SwitchButton;

    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/widget/view/SwitchButton;->setChecked(Z)V

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->switch_drak_mode:Lcom/wsw/cospa/widget/view/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/widget/view/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->swAutoNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/widget/view/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
