.class public Lorg/chromium/net/case$do;
.super Lorg/chromium/net/for$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/for$do;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/catch;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/for$do;-><init>(Lorg/chromium/net/catch;)V

    return-void
.end method


# virtual methods
.method public abstract(I)Lorg/chromium/net/case$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/for$do;->do:Lorg/chromium/net/catch;

    invoke-virtual {v0, p1}, Lorg/chromium/net/catch;->super(I)Lorg/chromium/net/catch;

    return-object p0
.end method

.method public bridge synthetic break(Z)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/case$do;->throws(Z)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(Z)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/case$do;->default(Z)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public continue(Ljava/lang/String;)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/for$do;->throw(Ljava/lang/String;)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public default(Z)Lorg/chromium/net/case$do;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic do(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/net/case$do;->while(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Z)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/case$do;->public(Z)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public extends()Lorg/chromium/net/catch;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/for$do;->do:Lorg/chromium/net/catch;

    return-object v0
.end method

.method public bridge synthetic final(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/case$do;->package(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public finally(Ljava/lang/String;)Lorg/chromium/net/case$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/for$do;->do:Lorg/chromium/net/catch;

    invoke-virtual {v0, p1}, Lorg/chromium/net/catch;->class(Ljava/lang/String;)Lorg/chromium/net/catch;

    return-object p0
.end method

.method public bridge synthetic for()Lorg/chromium/net/for;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/case$do;->native()Lorg/chromium/net/case;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic goto(IJ)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/case$do;->return(IJ)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if(Ljava/lang/String;II)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/case$do;->import(Ljava/lang/String;II)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public import(Ljava/lang/String;II)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/net/for$do;->if(Ljava/lang/String;II)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public native()Lorg/chromium/net/case;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/for$do;->do:Lorg/chromium/net/catch;

    invoke-virtual {v0}, Lorg/chromium/net/catch;->for()Lorg/chromium/net/case;

    move-result-object v0

    return-object v0
.end method

.method public package(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/for$do;->final(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public private(Ljava/lang/String;)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/for$do;->super(Ljava/lang/String;)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public public(Z)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/for$do;->else(Z)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public return(IJ)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/net/for$do;->goto(IJ)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public static(Z)Lorg/chromium/net/case$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/for$do;->do:Lorg/chromium/net/catch;

    invoke-virtual {v0, p1}, Lorg/chromium/net/catch;->else(Z)Lorg/chromium/net/catch;

    return-object p0
.end method

.method public bridge synthetic super(Ljava/lang/String;)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/case$do;->private(Ljava/lang/String;)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public switch(Z)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/for$do;->this(Z)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public bridge synthetic this(Z)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/case$do;->switch(Z)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic throw(Ljava/lang/String;)Lorg/chromium/net/for$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/case$do;->continue(Ljava/lang/String;)Lorg/chromium/net/case$do;

    move-result-object p1

    return-object p1
.end method

.method public throws(Z)Lorg/chromium/net/case$do;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/for$do;->break(Z)Lorg/chromium/net/for$do;

    return-object p0
.end method

.method public while(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/case$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Lorg/chromium/net/case$do;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/net/for$do;->do(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/for$do;

    return-object p0
.end method
