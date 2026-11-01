.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$for;
.super Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if<",
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public do()Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;
    .locals 8

    .line 1
    new-instance v7, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->do:Landroid/view/View;

    iget v2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->if:I

    iget v3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->for:I

    iget v4, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->try:F

    iget v5, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->case:F

    iget v6, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->new:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;-><init>(Landroid/view/View;IIFFI)V

    return-object v7
.end method
