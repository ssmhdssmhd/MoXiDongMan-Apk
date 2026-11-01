.class public Lnet/minidev/json/new;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static do:Lnet/minidev/json/for;

.field public static final for:Lnet/minidev/json/writer/try;

.field public static final if:Lnet/minidev/json/reader/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/for;->const:Lnet/minidev/json/for;

    sput-object v0, Lnet/minidev/json/new;->do:Lnet/minidev/json/for;

    .line 2
    new-instance v0, Lnet/minidev/json/reader/try;

    invoke-direct {v0}, Lnet/minidev/json/reader/try;-><init>()V

    sput-object v0, Lnet/minidev/json/new;->if:Lnet/minidev/json/reader/try;

    .line 3
    new-instance v0, Lnet/minidev/json/writer/try;

    invoke-direct {v0}, Lnet/minidev/json/writer/try;-><init>()V

    sput-object v0, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/new;->do:Lnet/minidev/json/for;

    invoke-static {p0, p1, v0}, Lnet/minidev/json/new;->b(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    return-void
.end method

.method public static abstract(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 1
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Lnet/minidev/json/new;->if:Lnet/minidev/json/reader/try;

    invoke-virtual {v1, v0}, Lnet/minidev/json/reader/try;->for(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v2

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Lnet/minidev/json/reader/try;->class:Lnet/minidev/json/reader/JsonWriterI;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/minidev/json/reader/try;->new(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    sget-object v2, Lnet/minidev/json/reader/try;->break:Lnet/minidev/json/reader/JsonWriterI;

    :cond_2
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 8
    invoke-virtual {v1, v2, v3}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 9
    :cond_3
    invoke-interface {v2, p0, p1, p2}, Lnet/minidev/json/reader/JsonWriterI;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    return-void
.end method

.method public static break(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Landroid/support/v4/fa0;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/support/v4/ic1; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static case(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2, p0, p1}, Lnet/minidev/json/for;->case(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static catch(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/do;->try(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static class(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->else(Ljava/io/InputStream;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static const(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    new-instance v1, Lnet/minidev/json/writer/goto;

    sget-object v2, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-direct {v1, v2, p1}, Lnet/minidev/json/writer/goto;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->else(Ljava/io/InputStream;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static continue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static default(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static do(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/for;->final:Lnet/minidev/json/for;

    invoke-static {p0, v0}, Lnet/minidev/json/new;->if(Ljava/lang/String;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static else(Ljava/io/Reader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Landroid/support/v4/fa0;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/support/v4/ic1; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static extends(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/do;->goto(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static finally(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static for(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/new;->do:Lnet/minidev/json/for;

    invoke-static {p0, v0}, Lnet/minidev/json/new;->new(Ljava/lang/String;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Landroid/support/v4/fa0;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/support/v4/ic1; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static if(Ljava/lang/String;Lnet/minidev/json/for;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Lnet/minidev/json/parser/do;

    sget v2, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v1, v2}, Lnet/minidev/json/parser/do;-><init>(I)V

    new-instance v2, Lnet/minidev/json/writer/new;

    sget-object v3, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-direct {v2, v3, v0, p1}, Lnet/minidev/json/writer/new;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    invoke-virtual {v1, p0, v2}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static implements(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/new;->do:Lnet/minidev/json/for;

    invoke-static {p0, v0}, Lnet/minidev/json/new;->instanceof(Ljava/lang/Object;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static import(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/do;->catch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static instanceof(Ljava/lang/Object;Lnet/minidev/json/for;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0, v0, p1}, Lnet/minidev/json/new;->b(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static interface(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    return-void
.end method

.method public static native(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new(Ljava/lang/String;Lnet/minidev/json/for;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1, p0, v0}, Lnet/minidev/json/for;->case(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static package(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static private(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->else(Ljava/io/InputStream;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static protected(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/new;->if:Lnet/minidev/json/reader/try;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    return-void
.end method

.method public static public(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    new-instance v1, Lnet/minidev/json/writer/goto;

    sget-object v2, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-direct {v1, v2, p1}, Lnet/minidev/json/writer/goto;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static return(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static static([B)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    invoke-virtual {v0, p0}, Lnet/minidev/json/parser/do;->final([B)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static strictfp(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static super(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static switch([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p1}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->throw([BLnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synchronized(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/for;->const:Lnet/minidev/json/for;

    invoke-static {p0, v0}, Lnet/minidev/json/new;->if(Ljava/lang/String;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static this(Ljava/io/Reader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    const/16 v1, 0x290

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Landroid/support/v4/fa0;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/support/v4/ic1; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static throw(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    new-instance v1, Lnet/minidev/json/writer/goto;

    sget-object v2, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-direct {v1, v2, p1}, Lnet/minidev/json/writer/goto;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static throws([BLnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->throw([BLnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static transient(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v0, p0, p1, p2}, Lnet/minidev/json/writer/try;->try(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lnet/minidev/json/new;->if:Lnet/minidev/json/reader/try;

    invoke-virtual {v0, p0, p2, p1}, Lnet/minidev/json/reader/try;->break(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static try(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/minidev/json/new;->do:Lnet/minidev/json/for;

    invoke-static {p0, p1, v0}, Lnet/minidev/json/new;->case(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    return-void
.end method

.method public static volatile([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p0, v1}, Lnet/minidev/json/parser/do;->throw([BLnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static while(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/minidev/json/parser/do;

    sget v1, Lnet/minidev/json/parser/do;->return:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0, p1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
