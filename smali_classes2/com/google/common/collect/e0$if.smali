.class public Lcom/google/common/collect/e0$if;
.super Lcom/google/common/collect/h3$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h3$if<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/e0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e0$if;->if:Lcom/google/common/collect/e0;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/h3$if;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-void
.end method
