.class public final synthetic Landroid/support/v4/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Landroid/support/v4/f4;

.field public final synthetic if:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/f4;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e4;->do:Landroid/support/v4/f4;

    iput-object p2, p0, Landroid/support/v4/e4;->if:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e4;->do:Landroid/support/v4/f4;

    iget-object v1, p0, Landroid/support/v4/e4;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/f4;->do(Landroid/support/v4/f4;Ljava/lang/Object;)V

    return-void
.end method
