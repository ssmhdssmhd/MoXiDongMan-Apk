.class public final synthetic Landroid/support/v4/is;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Landroid/support/v4/js;

.field public final synthetic if:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/js;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/is;->do:Landroid/support/v4/js;

    iput-object p2, p0, Landroid/support/v4/is;->if:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/is;->do:Landroid/support/v4/js;

    iget-object v1, p0, Landroid/support/v4/is;->if:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Landroid/support/v4/js;->do(Landroid/support/v4/js;Ljava/lang/Throwable;)V

    return-void
.end method
