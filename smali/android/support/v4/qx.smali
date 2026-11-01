.class public Landroid/support/v4/qx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/viewprovider/ViewBehavior;


# instance fields
.field private final do:Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;


# direct methods
.method public constructor <init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/qx;->do:Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;

    return-void
.end method


# virtual methods
.method public onHandleGrabbed()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qx;->do:Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->if()V

    return-void
.end method

.method public onHandleReleased()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qx;->do:Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->do()V

    return-void
.end method

.method public onScrollFinished()V
    .locals 0

    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    return-void
.end method
