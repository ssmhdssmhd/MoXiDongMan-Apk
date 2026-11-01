.class public final synthetic Landroid/support/v4/g61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Landroid/support/v4/h61;

.field public final synthetic for:Lorg/chromium/base/Callback;

.field public final synthetic if:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/h61;Ljava/lang/Object;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g61;->do:Landroid/support/v4/h61;

    iput-object p2, p0, Landroid/support/v4/g61;->if:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/g61;->for:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/g61;->do:Landroid/support/v4/h61;

    iget-object v1, p0, Landroid/support/v4/g61;->if:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/g61;->for:Lorg/chromium/base/Callback;

    invoke-static {v0, v1, v2}, Landroid/support/v4/h61;->do(Landroid/support/v4/h61;Ljava/lang/Object;Lorg/chromium/base/Callback;)V

    return-void
.end method
