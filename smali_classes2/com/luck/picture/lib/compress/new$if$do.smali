.class Lcom/luck/picture/lib/compress/new$if$do;
.super Lcom/luck/picture/lib/compress/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/compress/new$if;->native(Ljava/io/File;)Lcom/luck/picture/lib/compress/new$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/luck/picture/lib/compress/new$if;

.field public final synthetic if:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/compress/new$if;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if$do;->for:Lcom/luck/picture/lib/compress/new$if;

    iput-object p2, p0, Lcom/luck/picture/lib/compress/new$if$do;->if:Ljava/io/File;

    invoke-direct {p0}, Lcom/luck/picture/lib/compress/for;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if$do;->if:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$do;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
