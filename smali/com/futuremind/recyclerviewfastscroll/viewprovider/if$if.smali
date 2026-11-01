.class public abstract Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public case:F

.field public final do:Landroid/view/View;

.field public for:I

.field public if:I

.field public new:I

.field public try:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$animator;->fastscroll__default_show:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->if:I

    .line 3
    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$animator;->fastscroll__default_hide:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->for:I

    const/16 v0, 0x3e8

    .line 4
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->new:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->try:F

    .line 6
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->case:F

    .line 7
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->do:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public case(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->if:I

    return-object p0
.end method

.method public abstract do()Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public for(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->new:I

    return-object p0
.end method

.method public if(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->for:I

    return-object p0
.end method

.method public new(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->try:F

    return-object p0
.end method

.method public try(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;->case:F

    return-object p0
.end method
