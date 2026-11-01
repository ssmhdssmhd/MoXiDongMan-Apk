.class public Lcom/bumptech/glide/load/model/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/try$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final if:I = 0xfa


# instance fields
.field private final do:Landroid/support/v4/jw0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/jw0<",
            "Lcom/bumptech/glide/load/model/try$if<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/model/try;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/model/try$do;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/model/try$do;-><init>(Lcom/bumptech/glide/load/model/try;J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/try;->do:Landroid/support/v4/jw0;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/try;->do:Landroid/support/v4/jw0;

    invoke-virtual {v0}, Landroid/support/v4/jw0;->clearMemory()V

    return-void
.end method

.method public for(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/try$if;->do(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/try$if;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/bumptech/glide/load/model/try;->do:Landroid/support/v4/jw0;

    invoke-virtual {p2, p1, p4}, Landroid/support/v4/jw0;->else(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public if(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/try$if;->do(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/try$if;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/bumptech/glide/load/model/try;->do:Landroid/support/v4/jw0;

    invoke-virtual {p2, p1}, Landroid/support/v4/jw0;->for(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/try$if;->for()V

    return-object p2
.end method
