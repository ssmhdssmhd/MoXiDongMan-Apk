.class public abstract Lcom/google/common/collect/z$do;
.super Lcom/google/common/collect/Maps$native;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$native<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/z;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/z$do;->do:Lcom/google/common/collect/z;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$native;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$do;->do:Lcom/google/common/collect/z;

    return-object v0
.end method
