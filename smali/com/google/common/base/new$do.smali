.class Lcom/google/common/base/new$do;
.super Lcom/google/common/base/new$throws;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/new;->implements()Lcom/google/common/base/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Ljava/lang/String;

.field public final synthetic new:Lcom/google/common/base/new;


# direct methods
.method public constructor <init>(Lcom/google/common/base/new;Lcom/google/common/base/new;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/new$do;->new:Lcom/google/common/base/new;

    iput-object p3, p0, Lcom/google/common/base/new$do;->for:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/common/base/new$throws;-><init>(Lcom/google/common/base/new;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/new$do;->for:Ljava/lang/String;

    return-object v0
.end method
