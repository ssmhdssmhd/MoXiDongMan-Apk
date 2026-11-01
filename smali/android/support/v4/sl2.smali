.class public Landroid/support/v4/sl2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final if:Ljava/lang/ThreadLocal;


# instance fields
.field private do:Lfreemarker/ext/beans/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/sl2;->if:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/sl2;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/sl2;->if:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static if()Landroid/support/v4/sl2;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/sl2;->if:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/support/v4/sl2;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/sl2;

    invoke-direct {v0}, Landroid/support/v4/sl2;-><init>()V

    return-object v0
.end method

.method public static new()Landroid/support/v4/sl2;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/sl2;->if:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/support/v4/sl2;

    invoke-direct {v2}, Landroid/support/v4/sl2;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    check-cast v1, Landroid/support/v4/sl2;

    return-object v1
.end method


# virtual methods
.method public for()Lfreemarker/ext/beans/try;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/sl2;->do:Lfreemarker/ext/beans/try;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/ext/beans/try;

    sget-object v1, Lfreemarker/template/do;->k3:Landroid/support/v4/we2;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/try;-><init>(Landroid/support/v4/we2;)V

    iput-object v0, p0, Landroid/support/v4/sl2;->do:Lfreemarker/ext/beans/try;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/sl2;->do:Lfreemarker/ext/beans/try;

    return-object v0
.end method
