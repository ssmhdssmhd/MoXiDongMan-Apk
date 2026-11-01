.class final Lcom/google/common/hash/goto$if;
.super Lcom/google/common/hash/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/hash/goto;

.field private final if:Ljava/util/zip/Checksum;


# direct methods
.method private constructor <init>(Lcom/google/common/hash/goto;Ljava/util/zip/Checksum;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/hash/goto$if;->for:Lcom/google/common/hash/goto;

    invoke-direct {p0}, Lcom/google/common/hash/do;-><init>()V

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/zip/Checksum;

    iput-object p1, p0, Lcom/google/common/hash/goto$if;->if:Ljava/util/zip/Checksum;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/hash/goto;Ljava/util/zip/Checksum;Lcom/google/common/hash/goto$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/goto$if;-><init>(Lcom/google/common/hash/goto;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/class;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/goto$if;->if:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/google/common/hash/goto$if;->for:Lcom/google/common/hash/goto;

    invoke-static {v2}, Lcom/google/common/hash/goto;->access$100(Lcom/google/common/hash/goto;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    long-to-int v1, v0

    .line 3
    invoke-static {v1}, Lcom/google/common/hash/class;->fromInt(I)Lcom/google/common/hash/class;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/hash/class;->fromLong(J)Lcom/google/common/hash/class;

    move-result-object v0

    return-object v0
.end method

.method public if(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/goto$if;->if:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    return-void
.end method

.method public try([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/goto$if;->if:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    return-void
.end method
