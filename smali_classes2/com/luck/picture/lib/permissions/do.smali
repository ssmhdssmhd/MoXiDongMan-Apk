.class public Lcom/luck/picture/lib/permissions/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final for:Ljava/lang/Object;

.field public static final if:Ljava/lang/String; = "RxPermissions"


# instance fields
.field public do:Landroid/support/v4/np1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/permissions/do;->for:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/permissions/do;->case(Landroid/app/Activity;)Landroid/support/v4/np1;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    return-void
.end method

.method private case(Landroid/app/Activity;)Landroid/support/v4/np1;
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/permissions/do;->try(Landroid/app/Activity;)Landroid/support/v4/np1;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    :try_start_1
    new-instance v1, Landroid/support/v4/np1;

    invoke-direct {v1}, Landroid/support/v4/np1;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "RxPermissions"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0
.end method

.method private catch(Lio/reactivex/new;Lio/reactivex/new;)Lio/reactivex/new;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "*>;",
            "Lio/reactivex/new<",
            "*>;)",
            "Lio/reactivex/new<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/luck/picture/lib/permissions/do;->for:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lio/reactivex/new;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private varargs class([Ljava/lang/String;)Lio/reactivex/new;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    invoke-virtual {v3, v2}, Landroid/support/v4/np1;->do(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/new;->empty()Lio/reactivex/new;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/luck/picture/lib/permissions/do;->for:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private varargs const(Lio/reactivex/new;[Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Landroid/support/v4/dd1;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/luck/picture/lib/permissions/do;->class([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/permissions/do;->catch(Lio/reactivex/new;Lio/reactivex/new;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/permissions/do$for;

    invoke-direct {v0, p0, p2}, Lcom/luck/picture/lib/permissions/do$for;-><init>(Lcom/luck/picture/lib/permissions/do;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RxPermissions.request/requestEach requires at least one input permission"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic do(Lcom/luck/picture/lib/permissions/do;Lio/reactivex/new;[Ljava/lang/String;)Lio/reactivex/new;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/permissions/do;->const(Lio/reactivex/new;[Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/permissions/do;[Ljava/lang/String;)Lio/reactivex/new;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/permissions/do;->throw([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private varargs public(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/permissions/do;->else(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private varargs throw([Ljava/lang/String;)Lio/reactivex/new;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Landroid/support/v4/dd1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 4
    iget-object v6, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requesting permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/np1;->try(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v5}, Lcom/luck/picture/lib/permissions/do;->else(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    new-instance v6, Landroid/support/v4/dd1;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7, v3}, Landroid/support/v4/dd1;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0, v5}, Lcom/luck/picture/lib/permissions/do;->this(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    new-instance v6, Landroid/support/v4/dd1;

    invoke-direct {v6, v5, v3, v3}, Landroid/support/v4/dd1;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v6}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    invoke-virtual {v6, v5}, Landroid/support/v4/np1;->if(Ljava/lang/String;)Lio/reactivex/subjects/try;

    move-result-object v6

    if-nez v6, :cond_2

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lio/reactivex/subjects/try;->else()Lio/reactivex/subjects/try;

    move-result-object v6

    .line 12
    iget-object v7, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/np1;->this(Ljava/lang/String;Lio/reactivex/subjects/try;)Lio/reactivex/subjects/try;

    .line 13
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/permissions/do;->while([Ljava/lang/String;)V

    .line 17
    :cond_4
    invoke-static {v0}, Lio/reactivex/new;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/new;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/new;->concat(Lio/reactivex/ObservableSource;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private try(Landroid/app/Activity;)Landroid/support/v4/np1;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "RxPermissions"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/np1;

    return-object p1
.end method


# virtual methods
.method public break([Ljava/lang/String;[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    array-length v1, p1

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/np1;->case([Ljava/lang/String;[I[Z)V

    return-void
.end method

.method public else(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/permissions/do;->goto()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    invoke-virtual {v0, p1}, Landroid/support/v4/np1;->for(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public varargs final([Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/luck/picture/lib/permissions/do;->for:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/permissions/do;->for([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public varargs for([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/luck/picture/lib/permissions/do$do;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/permissions/do$do;-><init>(Lcom/luck/picture/lib/permissions/do;[Ljava/lang/String;)V

    return-object v0
.end method

.method public goto()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public import(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    invoke-virtual {v0, p1}, Landroid/support/v4/np1;->goto(Z)V

    return-void
.end method

.method public varargs native(Landroid/app/Activity;[Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/permissions/do;->goto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/permissions/do;->public(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public varargs new([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "TT;",
            "Landroid/support/v4/dd1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/luck/picture/lib/permissions/do$if;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/permissions/do$if;-><init>(Lcom/luck/picture/lib/permissions/do;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs super([Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Landroid/support/v4/dd1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/luck/picture/lib/permissions/do;->for:Ljava/lang/Object;

    invoke-static {v0}, Lio/reactivex/new;->just(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/permissions/do;->new([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public this(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/permissions/do;->goto()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    invoke-virtual {v0, p1}, Landroid/support/v4/np1;->new(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public while([Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermissionsFromFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/np1;->try(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/do;->do:Landroid/support/v4/np1;

    invoke-virtual {v0, p1}, Landroid/support/v4/np1;->else([Ljava/lang/String;)V

    return-void
.end method
