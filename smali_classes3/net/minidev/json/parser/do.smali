.class public Lnet/minidev/json/parser/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x10

.field public static final case:I = 0x1

.field public static final catch:I = 0x20

.field public static final class:I = 0x40

.field public static final const:I = 0x80

.field public static final else:I = 0x2

.field public static final final:I = 0x100

.field public static final goto:I = 0x4

.field public static final import:I = 0x290

.field public static final native:I = 0x7c0

.field public static final public:I = 0x490

.field public static return:I = 0x0

.field public static final super:I = 0x200

.field public static final this:I = 0x8

.field public static final throw:I = 0x400

.field public static final while:I = -0x1


# instance fields
.field private do:I

.field private for:Lnet/minidev/json/parser/for;

.field private if:Lnet/minidev/json/parser/new;

.field private new:Lnet/minidev/json/parser/case;

.field private try:Lnet/minidev/json/parser/goto;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "JSON_SMART_SIMPLE"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lnet/minidev/json/parser/do;->return:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lnet/minidev/json/parser/do;->return:I

    iput v0, p0, Lnet/minidev/json/parser/do;->do:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lnet/minidev/json/parser/do;->do:I

    return-void
.end method

.method private do()Lnet/minidev/json/parser/new;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/do;->if:Lnet/minidev/json/parser/new;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/new;

    iget v1, p0, Lnet/minidev/json/parser/do;->do:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/new;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/do;->if:Lnet/minidev/json/parser/new;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/do;->if:Lnet/minidev/json/parser/new;

    return-object v0
.end method

.method private for()Lnet/minidev/json/parser/case;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/do;->new:Lnet/minidev/json/parser/case;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/case;

    iget v1, p0, Lnet/minidev/json/parser/do;->do:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/case;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/do;->new:Lnet/minidev/json/parser/case;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/do;->new:Lnet/minidev/json/parser/case;

    return-object v0
.end method

.method private if()Lnet/minidev/json/parser/for;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/do;->for:Lnet/minidev/json/parser/for;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/for;

    iget v1, p0, Lnet/minidev/json/parser/do;->do:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/for;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/do;->for:Lnet/minidev/json/parser/for;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/do;->for:Lnet/minidev/json/parser/for;

    return-object v0
.end method

.method private new()Lnet/minidev/json/parser/goto;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/do;->try:Lnet/minidev/json/parser/goto;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/minidev/json/parser/goto;

    iget v1, p0, Lnet/minidev/json/parser/do;->do:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/goto;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/do;->try:Lnet/minidev/json/parser/goto;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/do;->try:Lnet/minidev/json/parser/goto;

    return-object v0
.end method


# virtual methods
.method public break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->for()Lnet/minidev/json/parser/case;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/case;->static(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public case(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->do()Lnet/minidev/json/parser/new;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/new;->throws(Ljava/io/InputStream;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public catch(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->new()Lnet/minidev/json/parser/goto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/goto;->throws(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public class(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->new()Lnet/minidev/json/parser/goto;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/goto;->default(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->new()Lnet/minidev/json/parser/goto;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/goto;->default(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/io/InputStream;Lnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->do()Lnet/minidev/json/parser/new;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/new;->throws(Ljava/io/InputStream;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->if()Lnet/minidev/json/parser/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/for;->throws([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public goto(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->for()Lnet/minidev/json/parser/case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/case;->return(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public super([BLjava/lang/Class;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->if()Lnet/minidev/json/parser/for;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/for;->default([BLnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public this(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->for()Lnet/minidev/json/parser/case;

    move-result-object v0

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {v1, p2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/case;->static(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public throw([BLnet/minidev/json/writer/case;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->if()Lnet/minidev/json/parser/for;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/minidev/json/parser/for;->default([BLnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public try(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/minidev/json/parser/do;->do()Lnet/minidev/json/parser/new;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/minidev/json/parser/new;->switch(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
