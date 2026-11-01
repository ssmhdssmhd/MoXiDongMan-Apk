.class public final synthetic Landroid/support/v4/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic do:Landroid/support/v4/d4;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/d4;

    invoke-direct {v0}, Landroid/support/v4/d4;-><init>()V

    sput-object v0, Landroid/support/v4/d4;->do:Landroid/support/v4/d4;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/task/do;->do(Ljava/lang/Runnable;)V

    return-void
.end method
