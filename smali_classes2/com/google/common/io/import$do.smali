.class Lcom/google/common/io/import$do;
.super Lcom/google/common/io/while;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/io/import;


# direct methods
.method public constructor <init>(Lcom/google/common/io/import;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/import$do;->for:Lcom/google/common/io/import;

    invoke-direct {p0}, Lcom/google/common/io/while;-><init>()V

    return-void
.end method


# virtual methods
.method public new(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/common/io/import$do;->for:Lcom/google/common/io/import;

    invoke-static {p2}, Lcom/google/common/io/import;->do(Lcom/google/common/io/import;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
