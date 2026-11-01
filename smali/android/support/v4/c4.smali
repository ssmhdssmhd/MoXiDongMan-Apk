.class public final synthetic Landroid/support/v4/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lorg/chromium/base/task/do;

.field public final synthetic if:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/task/do;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/c4;->do:Lorg/chromium/base/task/do;

    iput-object p2, p0, Landroid/support/v4/c4;->if:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/c4;->do:Lorg/chromium/base/task/do;

    iget-object v1, p0, Landroid/support/v4/c4;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/chromium/base/task/do;->if(Lorg/chromium/base/task/do;Ljava/lang/Object;)V

    return-void
.end method
