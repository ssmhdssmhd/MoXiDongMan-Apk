.class Lfreemarker/ext/jsp/final$do;
.super Ljavax/servlet/jsp/tagext/BodyContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/io/CharArrayWriter;


# direct methods
.method public constructor <init>(Ljavax/servlet/jsp/JspWriter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljavax/servlet/jsp/tagext/BodyContent;-><init>(Ljavax/servlet/jsp/JspWriter;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->goto()V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/servlet/jsp/JspWriter;->write([CII)V

    :goto_0
    return-void
.end method

.method public break(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->private(I)V

    return-void
.end method

.method public case()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public catch(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write(Ljava/lang/String;)V

    return-void
.end method

.method public class(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write(Ljava/lang/String;)V

    return-void
.end method

.method public const(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write(Ljava/lang/String;)V

    return-void
.end method

.method public continue(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->writeTo(Ljava/io/Writer;)V

    return-void
.end method

.method public default(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->super(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t clear"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extends(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->throw(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public final(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write(Ljava/lang/String;)V

    return-void
.end method

.method public finally(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->while(Z)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public for()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public goto()V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    return-void
.end method

.method public if()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t clear"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public import([C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write([C)V

    return-void
.end method

.method public native()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public new()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/servlet/jsp/JspWriter;->flush()V

    :cond_0
    return-void
.end method

.method public package([C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->import([C)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public private(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/servlet/jsp/JspWriter;->write(I)V

    :goto_0
    return-void
.end method

.method public public(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->break(C)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public return(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/jsp/final$do;->catch(D)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public static(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->class(F)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public super(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write(Ljava/lang/String;)V

    return-void
.end method

.method public switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->const(I)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public this()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/catch;->if:[C

    invoke-virtual {p0, v0}, Lfreemarker/ext/jsp/final$do;->write([C)V

    return-void
.end method

.method public throw(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write(Ljava/lang/String;)V

    return-void
.end method

.method public throws(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/jsp/final$do;->final(J)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->this()V

    return-void
.end method

.method public try()Ljava/io/Reader;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Lfreemarker/ext/jsp/final$do;->do:Ljava/io/CharArrayWriter;

    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v0
.end method

.method public while(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jsp/final$do;->write(Ljava/lang/String;)V

    return-void
.end method
