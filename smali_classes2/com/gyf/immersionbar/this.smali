.class final Lcom/gyf/immersionbar/this;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyf/immersionbar/this$if;
    }
.end annotation


# instance fields
.field private do:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gyf/immersionbar/OnNavigationBarListener;",
            ">;"
        }
    .end annotation
.end field

.field private for:Ljava/lang/Boolean;

.field private if:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gyf/immersionbar/this;->for:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gyf/immersionbar/this$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gyf/immersionbar/this;-><init>()V

    return-void
.end method

.method public static do()Lcom/gyf/immersionbar/this;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gyf/immersionbar/this$if;->do()Lcom/gyf/immersionbar/this;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnNavigationBarListener(Lcom/gyf/immersionbar/OnNavigationBarListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gyf/immersionbar/this;->do:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gyf/immersionbar/this;->do:Ljava/util/ArrayList;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/gyf/immersionbar/this;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/gyf/immersionbar/this;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public if(Landroid/app/Application;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/gyf/immersionbar/this;->if:Landroid/app/Application;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/gyf/immersionbar/this;->for:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 4
    invoke-static {}, Landroid/support/v4/n51;->const()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "force_fsg_nav_bar"

    .line 5
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Landroid/support/v4/n51;->case()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result p1

    const-string v1, "navigationbar_is_min"

    if-nez p1, :cond_2

    const/16 p1, 0x15

    if-ge v0, p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 10
    iget-object v0, p0, Lcom/gyf/immersionbar/this;->if:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/gyf/immersionbar/this;->for:Ljava/lang/Boolean;

    :cond_4
    return-void
.end method

.method public onChange(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lcom/gyf/immersionbar/this;->if:Landroid/app/Application;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gyf/immersionbar/this;->do:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    invoke-static {}, Landroid/support/v4/n51;->const()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/gyf/immersionbar/this;->if:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Landroid/support/v4/n51;->case()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Landroid/support/v4/n51;->this()Z

    move-result v0

    const-string v2, "navigationbar_is_min"

    if-nez v0, :cond_2

    const/16 v0, 0x15

    if-ge p1, v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/gyf/immersionbar/this;->if:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/gyf/immersionbar/this;->if:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/gyf/immersionbar/this;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gyf/immersionbar/OnNavigationBarListener;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 11
    :goto_3
    invoke-interface {v2, v3}, Lcom/gyf/immersionbar/OnNavigationBarListener;->onNavigationBarChange(Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public removeOnNavigationBarListener(Lcom/gyf/immersionbar/OnNavigationBarListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/gyf/immersionbar/this;->do:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
