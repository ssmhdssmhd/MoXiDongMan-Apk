.class Lcom/google/common/io/const$if;
.super Lcom/google/common/io/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/const;-><init>(IZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/io/const;


# direct methods
.method public constructor <init>(Lcom/google/common/io/const;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/const$if;->do:Lcom/google/common/io/const;

    invoke-direct {p0}, Lcom/google/common/io/new;-><init>()V

    return-void
.end method


# virtual methods
.method public const()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/const$if;->do:Lcom/google/common/io/const;

    invoke-static {v0}, Lcom/google/common/io/const;->do(Lcom/google/common/io/const;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
