.class abstract Lnet/minidev/json/parser/else;
.super Lnet/minidev/json/parser/if;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/if;-><init>(I)V

    return-void
.end method


# virtual methods
.method public break([Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {v0}, Lnet/minidev/json/parser/if$do;->for()V

    .line 2
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/if;->native([Z)V

    .line 3
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    return-void
.end method

.method public class([Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {v0}, Lnet/minidev/json/parser/if$do;->for()V

    .line 2
    iget-object v0, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    iget-char v1, p0, Lnet/minidev/json/parser/if;->do:C

    invoke-virtual {v0, v1}, Lnet/minidev/json/parser/if$do;->do(C)V

    .line 3
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->case()V

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->import()V

    .line 5
    iget-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    const/16 v1, 0x65

    const/16 v2, 0x2e

    const/16 v3, 0x1a

    const/16 v4, 0x7e

    const/16 v5, 0x45

    const/4 v6, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->public()V

    .line 7
    iget-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    if-ltz v0, :cond_1

    if-ge v0, v4, :cond_1

    aget-boolean v1, p1, v0

    if-nez v1, :cond_1

    if-eq v0, v3, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/if;->native([Z)V

    .line 9
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    .line 10
    iget-boolean v0, p0, Lnet/minidev/json/parser/if;->break:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Landroid/support/v4/ic1;

    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    iget-object v1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Landroid/support/v4/ic1;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 12
    :cond_1
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/if;->try(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 14
    iget-object v2, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {v2, v0}, Lnet/minidev/json/parser/if$do;->do(C)V

    .line 15
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->case()V

    .line 16
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->import()V

    .line 17
    :cond_3
    iget-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    if-eq v0, v5, :cond_6

    if-eq v0, v1, :cond_6

    .line 18
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->public()V

    .line 19
    iget-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    if-ltz v0, :cond_5

    if-ge v0, v4, :cond_5

    aget-boolean v1, p1, v0

    if-nez v1, :cond_5

    if-eq v0, v3, :cond_5

    .line 20
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/if;->native([Z)V

    .line 21
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    .line 22
    iget-boolean v0, p0, Lnet/minidev/json/parser/if;->break:Z

    if-eqz v0, :cond_4

    return-object p1

    .line 23
    :cond_4
    new-instance p1, Landroid/support/v4/ic1;

    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    iget-object v1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Landroid/support/v4/ic1;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 24
    :cond_5
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->for()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 26
    :cond_6
    iget-object v0, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {v0, v5}, Lnet/minidev/json/parser/if$do;->do(C)V

    .line 27
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->case()V

    .line 28
    iget-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_a

    const/16 v1, 0x30

    if-lt v0, v1, :cond_7

    const/16 v1, 0x39

    if-gt v0, v1, :cond_7

    goto :goto_0

    .line 29
    :cond_7
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/if;->native([Z)V

    .line 30
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    .line 31
    iget-boolean p1, p0, Lnet/minidev/json/parser/if;->break:Z

    if-eqz p1, :cond_9

    .line 32
    iget-boolean p1, p0, Lnet/minidev/json/parser/if;->goto:Z

    if-nez p1, :cond_8

    .line 33
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->if()V

    .line 34
    :cond_8
    iget-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    return-object p1

    .line 35
    :cond_9
    new-instance p1, Landroid/support/v4/ic1;

    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    iget-object v1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Landroid/support/v4/ic1;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 36
    :cond_a
    :goto_0
    iget-object v1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {v1, v0}, Lnet/minidev/json/parser/if$do;->do(C)V

    .line 37
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->case()V

    .line 38
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->import()V

    .line 39
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->public()V

    .line 40
    iget-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    if-ltz v0, :cond_c

    if-ge v0, v4, :cond_c

    aget-boolean v1, p1, v0

    if-nez v1, :cond_c

    if-eq v0, v3, :cond_c

    .line 41
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/if;->native([Z)V

    .line 42
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    .line 43
    iget-boolean v0, p0, Lnet/minidev/json/parser/if;->break:Z

    if-eqz v0, :cond_b

    return-object p1

    .line 44
    :cond_b
    new-instance p1, Landroid/support/v4/ic1;

    iget v0, p0, Lnet/minidev/json/parser/if;->else:I

    iget-object v1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Landroid/support/v4/ic1;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 45
    :cond_c
    iget-object p1, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {p1}, Lnet/minidev/json/parser/if$do;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/minidev/json/parser/if;->case:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->for()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public super()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ic1;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/parser/if;->catch:Z

    if-nez v0, :cond_1

    iget-char v0, p0, Lnet/minidev/json/parser/if;->do:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lnet/minidev/json/parser/if;->break:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lnet/minidev/json/parser/if;->return:[Z

    invoke-virtual {p0, v0}, Lnet/minidev/json/parser/else;->break([Z)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/ic1;

    iget v1, p0, Lnet/minidev/json/parser/if;->else:I

    const/4 v2, 0x0

    iget-char v3, p0, Lnet/minidev/json/parser/if;->do:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/ic1;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/parser/if;->new:Lnet/minidev/json/parser/if$do;

    invoke-virtual {v0}, Lnet/minidev/json/parser/if$do;->for()V

    .line 6
    invoke-virtual {p0}, Lnet/minidev/json/parser/if;->throw()V

    return-void
.end method
