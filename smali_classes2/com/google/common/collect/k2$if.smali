.class Lcom/google/common/collect/k2$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/google/common/collect/k2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/k2$do;

    invoke-direct {v0}, Lcom/google/common/collect/k2$do;-><init>()V

    sput-object v0, Lcom/google/common/collect/k2$if;->do:Lcom/google/common/collect/k2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
