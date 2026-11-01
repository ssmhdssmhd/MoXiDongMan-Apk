.class public Landroid/support/v4/g71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/OneshotSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/supplier/OneshotSupplier<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic for:Z


# instance fields
.field private final do:Lorg/chromium/base/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Promise<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final if:Lorg/chromium/base/ThreadUtils$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    iput-object v0, p0, Landroid/support/v4/g71;->do:Lorg/chromium/base/Promise;

    .line 3
    new-instance v0, Lorg/chromium/base/ThreadUtils$do;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$do;-><init>()V

    iput-object v0, p0, Landroid/support/v4/g71;->if:Lorg/chromium/base/ThreadUtils$do;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/g71;->if:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->do()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/g71;->do:Lorg/chromium/base/Promise;

    invoke-virtual {v0, p1}, Lorg/chromium/base/Promise;->else(Ljava/lang/Object;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/g71;->if:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->do()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/g71;->do:Lorg/chromium/base/Promise;

    invoke-virtual {v0}, Lorg/chromium/base/Promise;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/g71;->do:Lorg/chromium/base/Promise;

    invoke-virtual {v0}, Lorg/chromium/base/Promise;->this()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public synthetic hasValue()Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/base/supplier/if;->do(Lorg/chromium/base/supplier/Supplier;)Z

    move-result v0

    return v0
.end method

.method public onAvailable(Lorg/chromium/base/Callback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/g71;->if:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->do()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/g71;->do:Lorg/chromium/base/Promise;

    invoke-virtual {v0, p1}, Lorg/chromium/base/Promise;->return(Lorg/chromium/base/Callback;)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/g71;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
