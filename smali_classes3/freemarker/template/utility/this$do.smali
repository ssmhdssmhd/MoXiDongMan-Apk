.class Lfreemarker/template/utility/this$do;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/this;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/StringBuilder;

.field public final synthetic for:Lfreemarker/template/utility/this;

.field public final synthetic if:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lfreemarker/template/utility/this;Ljava/lang/StringBuilder;Ljava/io/Writer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/utility/this$do;->for:Lfreemarker/template/utility/this;

    iput-object p2, p0, Lfreemarker/template/utility/this$do;->do:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lfreemarker/template/utility/this$do;->if:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lfreemarker/template/utility/this$do;->do:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3
    iget-object v2, p0, Lfreemarker/template/utility/this$do;->for:Lfreemarker/template/utility/this;

    invoke-virtual {v2, v0, v1}, Lfreemarker/template/utility/this;->do(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 4
    iget-object v0, p0, Lfreemarker/template/utility/this$do;->if:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/this$do;->if:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/this$do;->do:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method
