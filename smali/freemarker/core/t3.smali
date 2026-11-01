.class public Lfreemarker/core/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final while:Z


# instance fields
.field public break:Z

.field public case:[I

.field public catch:Ljava/io/Reader;

.field public class:[C

.field public const:I

.field public do:I

.field public else:I

.field public final:I

.field public for:I

.field public goto:I

.field public if:I

.field public new:I

.field public super:I

.field public this:Z

.field public throw:Z

.field public try:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 25
    invoke-direct {p0, p1, v0, v0, v1}, Lfreemarker/core/t3;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/core/t3;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1

    .line 21
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 24
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/t3;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/t3;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 20
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p2, p3, p4, p5}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 19
    invoke-direct {p0, p1, v0, v0, v1}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lfreemarker/core/t3;->new:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lfreemarker/core/t3;->else:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lfreemarker/core/t3;->goto:I

    .line 5
    iput-boolean v0, p0, Lfreemarker/core/t3;->this:Z

    .line 6
    iput-boolean v0, p0, Lfreemarker/core/t3;->break:Z

    .line 7
    iput v0, p0, Lfreemarker/core/t3;->const:I

    .line 8
    iput v0, p0, Lfreemarker/core/t3;->final:I

    .line 9
    iput v1, p0, Lfreemarker/core/t3;->super:I

    .line 10
    iput-boolean v1, p0, Lfreemarker/core/t3;->throw:Z

    .line 11
    iput-object p1, p0, Lfreemarker/core/t3;->catch:Ljava/io/Reader;

    .line 12
    iput p2, p0, Lfreemarker/core/t3;->goto:I

    sub-int/2addr p3, v1

    .line 13
    iput p3, p0, Lfreemarker/core/t3;->else:I

    .line 14
    iput p4, p0, Lfreemarker/core/t3;->do:I

    iput p4, p0, Lfreemarker/core/t3;->if:I

    .line 15
    new-array p1, p4, [C

    iput-object p1, p0, Lfreemarker/core/t3;->class:[C

    .line 16
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/t3;->try:[I

    .line 17
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/t3;->case:[I

    return-void
.end method


# virtual methods
.method public break(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/t3;->class(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public case(I)[C
    .locals 6

    .line 1
    new-array v0, p1, [C

    .line 2
    iget v1, p0, Lfreemarker/core/t3;->new:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-lt v2, p1, :cond_0

    .line 3
    iget-object v2, p0, Lfreemarker/core/t3;->class:[C

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lfreemarker/core/t3;->class:[C

    iget v4, p0, Lfreemarker/core/t3;->do:I

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v4, v5

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v1, p0, Lfreemarker/core/t3;->class:[C

    iget v2, p0, Lfreemarker/core/t3;->new:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method

.method public catch(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/t3;->class(Ljava/io/InputStream;Ljava/lang/String;III)V

    return-void
.end method

.method public class(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lfreemarker/core/t3;->super(Ljava/io/Reader;III)V

    return-void
.end method

.method public const(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 1
    invoke-virtual {p0, p1, v0, v0, v1}, Lfreemarker/core/t3;->super(Ljava/io/Reader;III)V

    return-void
.end method

.method public default()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->super:I

    return v0
.end method

.method public do()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lfreemarker/core/t3;->for:I

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t3;->finally()C

    move-result v0

    .line 3
    iget v1, p0, Lfreemarker/core/t3;->new:I

    iput v1, p0, Lfreemarker/core/t3;->for:I

    return v0
.end method

.method public else(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    .line 1
    invoke-virtual {p0, p1, v0, v0, v1}, Lfreemarker/core/t3;->this(Ljava/io/InputStream;III)V

    return-void
.end method

.method public extends()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/t3;->throw:Z

    return v0
.end method

.method public final(Ljava/io/Reader;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/core/t3;->super(Ljava/io/Reader;III)V

    return-void
.end method

.method public finally()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->final:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lfreemarker/core/t3;->final:I

    .line 3
    iget v0, p0, Lfreemarker/core/t3;->new:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/t3;->new:I

    iget v1, p0, Lfreemarker/core/t3;->do:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lfreemarker/core/t3;->new:I

    .line 5
    :cond_0
    iget-object v0, p0, Lfreemarker/core/t3;->class:[C

    iget v1, p0, Lfreemarker/core/t3;->new:I

    aget-char v0, v0, v1

    return v0

    .line 6
    :cond_1
    iget v0, p0, Lfreemarker/core/t3;->new:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/t3;->new:I

    iget v1, p0, Lfreemarker/core/t3;->const:I

    if-lt v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/t3;->new()V

    .line 8
    :cond_2
    iget-object v0, p0, Lfreemarker/core/t3;->class:[C

    iget v1, p0, Lfreemarker/core/t3;->new:I

    aget-char v0, v0, v1

    .line 9
    invoke-virtual {p0, v0}, Lfreemarker/core/t3;->throw(C)V

    return v0
.end method

.method public for(Z)V
    .locals 6

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->do:I

    add-int/lit16 v1, v0, 0x800

    new-array v1, v1, [C

    add-int/lit16 v2, v0, 0x800

    .line 2
    new-array v2, v2, [I

    add-int/lit16 v3, v0, 0x800

    .line 3
    new-array v3, v3, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lfreemarker/core/t3;->class:[C

    iget v5, p0, Lfreemarker/core/t3;->for:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p1, p0, Lfreemarker/core/t3;->class:[C

    iget v0, p0, Lfreemarker/core/t3;->do:I

    iget v5, p0, Lfreemarker/core/t3;->for:I

    sub-int/2addr v0, v5

    iget v5, p0, Lfreemarker/core/t3;->new:I

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lfreemarker/core/t3;->class:[C

    .line 7
    iget-object p1, p0, Lfreemarker/core/t3;->try:[I

    iget v0, p0, Lfreemarker/core/t3;->for:I

    iget v1, p0, Lfreemarker/core/t3;->do:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p0, Lfreemarker/core/t3;->try:[I

    iget v0, p0, Lfreemarker/core/t3;->do:I

    iget v1, p0, Lfreemarker/core/t3;->for:I

    sub-int/2addr v0, v1

    iget v1, p0, Lfreemarker/core/t3;->new:I

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object v2, p0, Lfreemarker/core/t3;->try:[I

    .line 10
    iget-object p1, p0, Lfreemarker/core/t3;->case:[I

    iget v0, p0, Lfreemarker/core/t3;->for:I

    iget v1, p0, Lfreemarker/core/t3;->do:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object p1, p0, Lfreemarker/core/t3;->case:[I

    iget v0, p0, Lfreemarker/core/t3;->do:I

    iget v1, p0, Lfreemarker/core/t3;->for:I

    sub-int/2addr v0, v1

    iget v1, p0, Lfreemarker/core/t3;->new:I

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v3, p0, Lfreemarker/core/t3;->case:[I

    .line 13
    iget p1, p0, Lfreemarker/core/t3;->new:I

    iget v0, p0, Lfreemarker/core/t3;->do:I

    iget v1, p0, Lfreemarker/core/t3;->for:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/t3;->new:I

    iput p1, p0, Lfreemarker/core/t3;->const:I

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lfreemarker/core/t3;->class:[C

    iget v5, p0, Lfreemarker/core/t3;->for:I

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v1, p0, Lfreemarker/core/t3;->class:[C

    .line 16
    iget-object p1, p0, Lfreemarker/core/t3;->try:[I

    iget v0, p0, Lfreemarker/core/t3;->for:I

    iget v1, p0, Lfreemarker/core/t3;->do:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iput-object v2, p0, Lfreemarker/core/t3;->try:[I

    .line 18
    iget-object p1, p0, Lfreemarker/core/t3;->case:[I

    iget v0, p0, Lfreemarker/core/t3;->for:I

    iget v1, p0, Lfreemarker/core/t3;->do:I

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput-object v3, p0, Lfreemarker/core/t3;->case:[I

    .line 20
    iget p1, p0, Lfreemarker/core/t3;->new:I

    iget v0, p0, Lfreemarker/core/t3;->for:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/t3;->new:I

    iput p1, p0, Lfreemarker/core/t3;->const:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    iget p1, p0, Lfreemarker/core/t3;->do:I

    add-int/lit16 p1, p1, 0x800

    iput p1, p0, Lfreemarker/core/t3;->do:I

    .line 22
    iput p1, p0, Lfreemarker/core/t3;->if:I

    .line 23
    iput v4, p0, Lfreemarker/core/t3;->for:I

    return-void

    :catchall_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public goto(Ljava/io/InputStream;II)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/core/t3;->this(Ljava/io/InputStream;III)V

    return-void
.end method

.method public if()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lfreemarker/core/t3;->class:[C

    .line 2
    iput-object v0, p0, Lfreemarker/core/t3;->try:[I

    .line 3
    iput-object v0, p0, Lfreemarker/core/t3;->case:[I

    return-void
.end method

.method public import(I)V
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->final:I

    add-int/2addr v0, p1

    iput v0, p0, Lfreemarker/core/t3;->final:I

    .line 2
    iget v0, p0, Lfreemarker/core/t3;->new:I

    sub-int/2addr v0, p1

    iput v0, p0, Lfreemarker/core/t3;->new:I

    if-gez v0, :cond_0

    .line 3
    iget p1, p0, Lfreemarker/core/t3;->do:I

    add-int/2addr v0, p1

    iput v0, p0, Lfreemarker/core/t3;->new:I

    :cond_0
    return-void
.end method

.method public native()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/t3;->case:[I

    iget v1, p0, Lfreemarker/core/t3;->for:I

    aget v0, v0, v1

    return v0
.end method

.method public new()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->const:I

    iget v1, p0, Lfreemarker/core/t3;->if:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 2
    iget v0, p0, Lfreemarker/core/t3;->do:I

    const/16 v4, 0x800

    if-ne v1, v0, :cond_2

    .line 3
    iget v0, p0, Lfreemarker/core/t3;->for:I

    if-le v0, v4, :cond_0

    .line 4
    iput v3, p0, Lfreemarker/core/t3;->const:I

    iput v3, p0, Lfreemarker/core/t3;->new:I

    .line 5
    iput v0, p0, Lfreemarker/core/t3;->if:I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 6
    iput v3, p0, Lfreemarker/core/t3;->const:I

    iput v3, p0, Lfreemarker/core/t3;->new:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v3}, Lfreemarker/core/t3;->for(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget v5, p0, Lfreemarker/core/t3;->for:I

    if-le v1, v5, :cond_3

    .line 9
    iput v0, p0, Lfreemarker/core/t3;->if:I

    goto :goto_0

    :cond_3
    sub-int v0, v5, v1

    if-ge v0, v4, :cond_4

    .line 10
    invoke-virtual {p0, v2}, Lfreemarker/core/t3;->for(Z)V

    goto :goto_0

    .line 11
    :cond_4
    iput v5, p0, Lfreemarker/core/t3;->if:I

    :cond_5
    :goto_0
    const/4 v0, -0x1

    .line 12
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/t3;->catch:Ljava/io/Reader;

    iget-object v4, p0, Lfreemarker/core/t3;->class:[C

    iget v5, p0, Lfreemarker/core/t3;->const:I

    iget v6, p0, Lfreemarker/core/t3;->if:I

    sub-int/2addr v6, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 13
    iget v4, p0, Lfreemarker/core/t3;->const:I

    add-int/2addr v4, v1

    iput v4, p0, Lfreemarker/core/t3;->const:I

    return-void

    .line 14
    :cond_6
    iget-object v1, p0, Lfreemarker/core/t3;->catch:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 15
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 16
    iget v4, p0, Lfreemarker/core/t3;->new:I

    sub-int/2addr v4, v2

    iput v4, p0, Lfreemarker/core/t3;->new:I

    .line 17
    invoke-virtual {p0, v3}, Lfreemarker/core/t3;->import(I)V

    .line 18
    iget v2, p0, Lfreemarker/core/t3;->for:I

    if-ne v2, v0, :cond_7

    .line 19
    iget v0, p0, Lfreemarker/core/t3;->new:I

    iput v0, p0, Lfreemarker/core/t3;->for:I

    .line 20
    :cond_7
    throw v1
.end method

.method public package(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfreemarker/core/t3;->super:I

    return-void
.end method

.method public private(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/core/t3;->throw:Z

    return-void
.end method

.method public public()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/t3;->try:[I

    iget v1, p0, Lfreemarker/core/t3;->for:I

    aget v0, v0, v1

    return v0
.end method

.method public return()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/t3;->case:[I

    iget v1, p0, Lfreemarker/core/t3;->new:I

    aget v0, v0, v1

    return v0
.end method

.method public static()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/t3;->case:[I

    iget v1, p0, Lfreemarker/core/t3;->new:I

    aget v0, v0, v1

    return v0
.end method

.method public super(Ljava/io/Reader;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/t3;->catch:Ljava/io/Reader;

    .line 2
    iput p2, p0, Lfreemarker/core/t3;->goto:I

    add-int/lit8 p3, p3, -0x1

    .line 3
    iput p3, p0, Lfreemarker/core/t3;->else:I

    .line 4
    iget-object p1, p0, Lfreemarker/core/t3;->class:[C

    if-eqz p1, :cond_0

    array-length p1, p1

    if-eq p4, p1, :cond_1

    .line 5
    :cond_0
    iput p4, p0, Lfreemarker/core/t3;->do:I

    iput p4, p0, Lfreemarker/core/t3;->if:I

    .line 6
    new-array p1, p4, [C

    iput-object p1, p0, Lfreemarker/core/t3;->class:[C

    .line 7
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/t3;->try:[I

    .line 8
    new-array p1, p4, [I

    iput-object p1, p0, Lfreemarker/core/t3;->case:[I

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lfreemarker/core/t3;->this:Z

    iput-boolean p1, p0, Lfreemarker/core/t3;->break:Z

    .line 10
    iput p1, p0, Lfreemarker/core/t3;->const:I

    iput p1, p0, Lfreemarker/core/t3;->final:I

    iput p1, p0, Lfreemarker/core/t3;->for:I

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lfreemarker/core/t3;->new:I

    return-void
.end method

.method public switch()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/t3;->try:[I

    iget v1, p0, Lfreemarker/core/t3;->new:I

    aget v0, v0, v1

    return v0
.end method

.method public this(Ljava/io/InputStream;III)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lfreemarker/core/t3;->super(Ljava/io/Reader;III)V

    return-void
.end method

.method public throw(C)V
    .locals 4

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->else:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/core/t3;->else:I

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/t3;->break:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v3, p0, Lfreemarker/core/t3;->break:Z

    .line 4
    iget v0, p0, Lfreemarker/core/t3;->goto:I

    iput v1, p0, Lfreemarker/core/t3;->else:I

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/core/t3;->goto:I

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lfreemarker/core/t3;->this:Z

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v3, p0, Lfreemarker/core/t3;->this:Z

    if-ne p1, v2, :cond_1

    .line 7
    iput-boolean v1, p0, Lfreemarker/core/t3;->break:Z

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lfreemarker/core/t3;->goto:I

    iput v1, p0, Lfreemarker/core/t3;->else:I

    add-int/2addr v0, v1

    iput v0, p0, Lfreemarker/core/t3;->goto:I

    :cond_2
    :goto_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iput-boolean v1, p0, Lfreemarker/core/t3;->this:Z

    goto :goto_1

    .line 10
    :cond_4
    iput-boolean v1, p0, Lfreemarker/core/t3;->break:Z

    goto :goto_1

    .line 11
    :cond_5
    iget p1, p0, Lfreemarker/core/t3;->else:I

    sub-int/2addr p1, v1

    iput p1, p0, Lfreemarker/core/t3;->else:I

    .line 12
    iget v0, p0, Lfreemarker/core/t3;->super:I

    rem-int v1, p1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/t3;->else:I

    .line 13
    :goto_1
    iget-object p1, p0, Lfreemarker/core/t3;->try:[I

    iget v0, p0, Lfreemarker/core/t3;->new:I

    iget v1, p0, Lfreemarker/core/t3;->goto:I

    aput v1, p1, v0

    .line 14
    iget-object p1, p0, Lfreemarker/core/t3;->case:[I

    iget v1, p0, Lfreemarker/core/t3;->else:I

    aput v1, p1, v0

    return-void
.end method

.method public throws()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/t3;->try:[I

    iget v1, p0, Lfreemarker/core/t3;->new:I

    aget v0, v0, v1

    return v0
.end method

.method public try()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->new:I

    iget v1, p0, Lfreemarker/core/t3;->for:I

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/t3;->class:[C

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/core/t3;->class:[C

    iget v3, p0, Lfreemarker/core/t3;->for:I

    iget v4, p0, Lfreemarker/core/t3;->do:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/core/t3;->class:[C

    const/4 v3, 0x0

    iget v4, p0, Lfreemarker/core/t3;->new:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public while(II)V
    .locals 9

    .line 1
    iget v0, p0, Lfreemarker/core/t3;->for:I

    .line 2
    iget v1, p0, Lfreemarker/core/t3;->new:I

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v0

    .line 3
    iget v2, p0, Lfreemarker/core/t3;->final:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p0, Lfreemarker/core/t3;->do:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lfreemarker/core/t3;->final:I

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 5
    iget-object v3, p0, Lfreemarker/core/t3;->try:[I

    iget v5, p0, Lfreemarker/core/t3;->do:I

    rem-int v6, v0, v5

    aget v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    rem-int v5, v0, v5

    aget v8, v3, v5

    if-ne v7, v8, :cond_1

    .line 6
    aput p1, v3, v6

    .line 7
    iget-object v3, p0, Lfreemarker/core/t3;->case:[I

    aget v5, v3, v5

    add-int/2addr v5, v4

    aget v7, v3, v6

    sub-int/2addr v5, v7

    add-int/2addr v4, p2

    .line 8
    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v6

    :cond_2
    if-ge v2, v1, :cond_4

    .line 9
    iget-object v5, p0, Lfreemarker/core/t3;->try:[I

    add-int/lit8 v6, p1, 0x1

    aput p1, v5, v3

    .line 10
    iget-object p1, p0, Lfreemarker/core/t3;->case:[I

    add-int/2addr p2, v4

    aput p2, p1, v3

    :goto_2
    add-int/lit8 p1, v2, 0x1

    if-ge v2, v1, :cond_4

    .line 11
    iget-object p2, p0, Lfreemarker/core/t3;->try:[I

    iget v2, p0, Lfreemarker/core/t3;->do:I

    rem-int v3, v0, v2

    aget v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    rem-int v2, v0, v2

    aget v2, p2, v2

    if-eq v4, v2, :cond_3

    add-int/lit8 v2, v6, 0x1

    .line 12
    aput v6, p2, v3

    move v6, v2

    goto :goto_3

    .line 13
    :cond_3
    aput v6, p2, v3

    :goto_3
    move v2, p1

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Lfreemarker/core/t3;->try:[I

    aget p1, p1, v3

    iput p1, p0, Lfreemarker/core/t3;->goto:I

    .line 15
    iget-object p1, p0, Lfreemarker/core/t3;->case:[I

    aget p1, p1, v3

    iput p1, p0, Lfreemarker/core/t3;->else:I

    return-void
.end method
