.class final Lkotlin/coroutines/jvm/internal/new$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/jvm/internal/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "kotlin/coroutines/jvm/internal/new$do",
        "",
        "Ljava/lang/reflect/Method;",
        "do",
        "Ljava/lang/reflect/Method;",
        "getModuleMethod",
        "if",
        "getDescriptorMethod",
        "for",
        "nameMethod",
        "<init>",
        "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/v4/tp0;
    .end annotation

    .annotation build Landroid/support/v4/z41;
    .end annotation
.end field

.field public final for:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/v4/tp0;
    .end annotation

    .annotation build Landroid/support/v4/z41;
    .end annotation
.end field

.field public final if:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/v4/tp0;
    .end annotation

    .annotation build Landroid/support/v4/z41;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1    # Ljava/lang/reflect/Method;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .param p3    # Ljava/lang/reflect/Method;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/new$do;->do:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/new$do;->if:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lkotlin/coroutines/jvm/internal/new$do;->for:Ljava/lang/reflect/Method;

    return-void
.end method
