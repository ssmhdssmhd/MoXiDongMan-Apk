.class public Lcom/google/common/collect/b0$if;
.super Lcom/google/common/collect/Maps$abstract;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$abstract<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/b0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b0$if;->if:Lcom/google/common/collect/b0;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$abstract;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method
