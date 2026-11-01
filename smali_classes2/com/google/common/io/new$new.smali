.class final Lcom/google/common/io/new$new;
.super Lcom/google/common/io/new$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# static fields
.field public static final new:Lcom/google/common/io/new$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/io/new$new;

    invoke-direct {v0}, Lcom/google/common/io/new$new;-><init>()V

    sput-object v0, Lcom/google/common/io/new$new;->new:Lcom/google/common/io/new$new;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/io/new$if;-><init>([B)V

    return-void
.end method


# virtual methods
.method public do(Ljava/nio/charset/Charset;)Lcom/google/common/io/goto;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/io/goto;->goto()Lcom/google/common/io/goto;

    move-result-object p1

    return-object p1
.end method

.method public super()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/new$if;->do:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
