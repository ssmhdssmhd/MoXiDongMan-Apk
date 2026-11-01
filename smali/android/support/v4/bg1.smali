.class public final synthetic Landroid/support/v4/bg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# static fields
.field public static final synthetic do:Landroid/support/v4/bg1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/bg1;

    invoke-direct {v0}, Landroid/support/v4/bg1;-><init>()V

    sput-object v0, Landroid/support/v4/bg1;->do:Landroid/support/v4/bg1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bind(Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/gf;->do(Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lorg/chromium/base/Promise;->do(Ljava/lang/Exception;)V

    return-void
.end method
