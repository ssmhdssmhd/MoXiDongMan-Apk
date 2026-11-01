.class public Lcom/google/common/collect/c0$do;
.super Lcom/google/common/collect/c3$else;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c3$else<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/c0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$do;->if:Lcom/google/common/collect/c0;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/c3$else;-><init>(Ljava/util/NavigableSet;)V

    return-void
.end method
