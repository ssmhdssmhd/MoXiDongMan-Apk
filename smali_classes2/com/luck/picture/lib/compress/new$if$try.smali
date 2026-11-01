.class Lcom/luck/picture/lib/compress/new$if$try;
.super Lcom/luck/picture/lib/compress/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/compress/new$if;->class(Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/luck/picture/lib/compress/new$if;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/compress/new$if;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$if$try;->for:Lcom/luck/picture/lib/compress/new$if;

    iput-object p2, p0, Lcom/luck/picture/lib/compress/new$if$try;->if:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$if$try;->if:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new$if$try;->if:Ljava/lang/String;

    return-object v0
.end method
