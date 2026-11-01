.class public abstract Lcom/wsw/cospa/utils/download/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/download/ProgressResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/download/try$do;
    }
.end annotation


# static fields
.field private static final if:I = 0x2


# instance fields
.field private final do:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/download/try$do;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/wsw/cospa/utils/download/try$do;-><init>(Landroid/os/Looper;Lcom/wsw/cospa/utils/download/try;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/download/try;->do:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract do(JJZ)V
.end method

.method public onResponseProgress(JJZ)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2
    new-instance v7, Landroid/support/v4/tf1;

    move-object v1, v7

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/tf1;-><init>(JJZ)V

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/utils/download/try;->do:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
