.class public Lorg/mozilla/classfile/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/classfile/for$for;,
        Lorg/mozilla/classfile/for$do;,
        Lorg/mozilla/classfile/for$new;,
        Lorg/mozilla/classfile/for$if;
    }
.end annotation


# static fields
.field public static final a:S = 0x100s

.field public static final b:S = 0x400s

.field private static final c:I = 0x4

.field public static final continue:S = 0x1s

.field private static final d:I = 0x10

.field private static final e:I = 0x4

.field private static final f:I

.field private static final g:I

.field private static final h:Z

.field private static final i:I = -0x35014542

.field public static final implements:S = 0x20s

.field public static final instanceof:S = 0x40s

.field public static final interface:S = 0x8s

.field private static final j:Z = false

.field private static final k:Z = false

.field private static final l:Z = false

.field private static final m:I = 0x20

.field private static final n:I = 0x28

.field public static final protected:S = 0x10s

.field public static final strictfp:S = 0x2s

.field public static final synchronized:S = 0x80s

.field public static final transient:S = 0x20s

.field public static final volatile:S = 0x4s


# instance fields
.field private abstract:[C

.field private break:I

.field private case:I

.field private catch:Lorg/mozilla/classfile/try;

.field private class:Lorg/mozilla/classfile/if;

.field private const:S

.field private default:[J

.field private do:[I

.field private else:[I

.field private extends:I

.field private final:S

.field private finally:Lorg/mozilla/javascript/ObjArray;

.field private for:Lorg/mozilla/javascript/UintMap;

.field private goto:I

.field private if:I

.field private import:Lorg/mozilla/javascript/ObjArray;

.field private native:S

.field private new:Ljava/lang/String;

.field private package:Lorg/mozilla/javascript/ObjArray;

.field private private:I

.field private public:S

.field private return:S

.field private static:S

.field private super:S

.field private switch:[I

.field private this:[B

.field private throw:Lorg/mozilla/javascript/ObjArray;

.field private throws:I

.field private try:[Lorg/mozilla/classfile/case;

.field private while:Lorg/mozilla/javascript/ObjArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x30

    .line 1
    :try_start_0
    const-class v3, Lorg/mozilla/classfile/for;

    const-string v4, "ClassFileWriter.class"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "org/mozilla/classfile/ClassFileWriter.class"

    .line 2
    invoke-static {v3}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    rsub-int/lit8 v6, v5, 0x8

    .line 3
    invoke-virtual {v1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    add-int/2addr v5, v6

    goto :goto_0

    .line 4
    :cond_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_2
    const/4 v5, 0x4

    .line 5
    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    const/4 v6, 0x5

    aget-byte v6, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v6, 0x6

    .line 6
    :try_start_1
    aget-byte v6, v4, v6

    shl-int/lit8 v3, v6, 0x8

    const/4 v6, 0x7

    aget-byte v2, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 7
    sput v5, Lorg/mozilla/classfile/for;->g:I

    .line 8
    sput v2, Lorg/mozilla/classfile/for;->f:I

    const/16 v3, 0x32

    if-lt v2, v3, :cond_3

    const/4 v0, 0x1

    .line 9
    :cond_3
    sput-boolean v0, Lorg/mozilla/classfile/for;->h:Z

    if-eqz v1, :cond_5

    .line 10
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    const/4 v5, 0x0

    .line 11
    :goto_2
    sput v5, Lorg/mozilla/classfile/for;->g:I

    .line 12
    sput v2, Lorg/mozilla/classfile/for;->f:I

    .line 13
    sput-boolean v0, Lorg/mozilla/classfile/for;->h:Z

    if-eqz v1, :cond_4

    .line 14
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 15
    :catch_0
    :cond_4
    throw v3

    :catch_1
    const/4 v5, 0x0

    .line 16
    :catch_2
    sput v5, Lorg/mozilla/classfile/for;->g:I

    .line 17
    sput v2, Lorg/mozilla/classfile/for;->f:I

    .line 18
    sput-boolean v0, Lorg/mozilla/classfile/for;->h:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :catch_3
    :cond_5
    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/mozilla/classfile/for;->do:[I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/mozilla/classfile/for;->if:I

    .line 4
    iput-object v0, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lorg/mozilla/classfile/for;->this:[B

    .line 6
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/for;->throw:Lorg/mozilla/javascript/ObjArray;

    .line 7
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    .line 8
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/for;->import:Lorg/mozilla/javascript/ObjArray;

    .line 9
    iput v1, p0, Lorg/mozilla/classfile/for;->private:I

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 10
    iput-object v0, p0, Lorg/mozilla/classfile/for;->abstract:[C

    .line 11
    iput-object p1, p0, Lorg/mozilla/classfile/for;->new:Ljava/lang/String;

    .line 12
    new-instance v0, Lorg/mozilla/classfile/try;

    invoke-direct {v0, p0}, Lorg/mozilla/classfile/try;-><init>(Lorg/mozilla/classfile/for;)V

    iput-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    .line 13
    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/for;->public:S

    .line 14
    iget-object p1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/for;->return:S

    if-eqz p3, :cond_0

    .line 15
    iget-object p1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/mozilla/classfile/for;->static:S

    :cond_0
    const/16 p1, 0x21

    .line 16
    iput-short p1, p0, Lorg/mozilla/classfile/for;->native:S

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    .line 2
    new-array v3, v2, [C

    const/16 v4, 0x4c

    const/4 v5, 0x0

    .line 3
    aput-char v4, v3, v5

    const/16 v4, 0x3b

    .line 4
    aput-char v4, v3, v1

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p0, v5, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    if-eq v4, v1, :cond_1

    .line 6
    aget-char p0, v3, v4

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2f

    .line 7
    aput-char p0, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method private B()[I
    .locals 10

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->super:S

    new-array v0, v0, [I

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    invoke-virtual {v1}, Lorg/mozilla/classfile/if;->do()S

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    invoke-virtual {v1}, Lorg/mozilla/classfile/if;->if()Ljava/lang/String;

    move-result-object v1

    const-string v4, "<init>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 4
    aput v1, v0, v2

    goto :goto_0

    .line 5
    :cond_0
    iget-short v1, p0, Lorg/mozilla/classfile/for;->public:S

    invoke-static {v1}, Lorg/mozilla/classfile/this;->do(I)I

    move-result v1

    aput v1, v0, v2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    iget-object v4, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    invoke-virtual {v4}, Lorg/mozilla/classfile/if;->for()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v5, :cond_7

    if-ltz v6, :cond_7

    add-int/2addr v5, v3

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v5, v6, :cond_6

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x46

    if-eq v8, v9, :cond_4

    const/16 v9, 0x4c

    if-eq v8, v9, :cond_3

    const/16 v9, 0x53

    if-eq v8, v9, :cond_4

    const/16 v9, 0x49

    if-eq v8, v9, :cond_4

    const/16 v9, 0x4a

    if-eq v8, v9, :cond_4

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_4

    const/16 v9, 0x5b

    if-eq v8, v9, :cond_2

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v8, 0x3b

    .line 12
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/2addr v8, v3

    .line 13
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    goto :goto_3

    .line 15
    :cond_4
    :pswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    .line 16
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/classfile/for;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    iget-object v9, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-static {v8, v9}, Lorg/mozilla/classfile/this;->new(Ljava/lang/String;Lorg/mozilla/classfile/try;)I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    .line 18
    aput v8, v0, v1

    .line 19
    invoke-static {v8}, Lorg/mozilla/classfile/this;->this(I)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v9, v9, 0x1

    :cond_5
    move v1, v9

    .line 20
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_6
    return-object v0

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad method type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static C(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_1

    const/16 v1, 0x56

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/mozilla/classfile/for;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private D()V
    .locals 6

    .line 1
    sget-boolean v0, Lorg/mozilla/classfile/for;->h:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lorg/mozilla/classfile/for;->case:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    aget-object v2, v2, v1

    .line 4
    iget v2, v2, Lorg/mozilla/classfile/case;->for:I

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v2

    .line 5
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/for;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/for;->do:[I

    iget v2, p0, Lorg/mozilla/classfile/for;->if:I

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->sort([III)V

    .line 7
    iget-object v1, p0, Lorg/mozilla/classfile/for;->do:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 8
    :goto_1
    iget v4, p0, Lorg/mozilla/classfile/for;->if:I

    if-ge v2, v4, :cond_3

    .line 9
    iget-object v4, p0, Lorg/mozilla/classfile/for;->do:[I

    aget v5, v4, v2

    if-eq v0, v5, :cond_2

    if-eq v3, v2, :cond_1

    .line 10
    aput v5, v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iput v3, p0, Lorg/mozilla/classfile/for;->if:I

    .line 12
    iget-object v0, p0, Lorg/mozilla/classfile/for;->do:[I

    add-int/lit8 v2, v3, -0x1

    aget v0, v0, v2

    iget v2, p0, Lorg/mozilla/classfile/for;->break:I

    if-ne v0, v2, :cond_4

    sub-int/2addr v3, v1

    .line 13
    iput v3, p0, Lorg/mozilla/classfile/for;->if:I

    :cond_4
    return-void
.end method

.method private E()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->this:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lorg/mozilla/classfile/for;->extends:I

    if-ge v2, v3, :cond_2

    .line 3
    iget-object v3, p0, Lorg/mozilla/classfile/for;->default:[J

    aget-wide v4, v3, v2

    const/16 v3, 0x20

    shr-long v6, v4, v3

    long-to-int v3, v6

    long-to-int v5, v4

    .line 4
    iget-object v4, p0, Lorg/mozilla/classfile/for;->switch:[I

    aget v3, v4, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 5
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/for;->q(I)V

    .line 6
    iget-object v4, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v3, v6}, Lorg/mozilla/javascript/UintMap;->put(II)V

    sub-int/2addr v3, v6

    int-to-short v4, v3

    if-ne v4, v3, :cond_0

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v3, v3

    .line 8
    aput-byte v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lorg/mozilla/classfile/for$if;

    const-string v1, "Program too complex: too big jump offset"

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unlocated label"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    iput v1, p0, Lorg/mozilla/classfile/for;->extends:I

    return-void
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private L()I
    .locals 4

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->static:S

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    :cond_0
    const/16 v0, 0x8

    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v1}, Lorg/mozilla/classfile/try;->native()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 4
    iget-object v1, p0, Lorg/mozilla/classfile/for;->import:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/classfile/do;

    invoke-virtual {v3}, Lorg/mozilla/classfile/do;->do()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 7
    :goto_1
    iget-object v2, p0, Lorg/mozilla/classfile/for;->throw:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 8
    iget-object v2, p0, Lorg/mozilla/classfile/for;->throw:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/classfile/if;

    invoke-virtual {v2}, Lorg/mozilla/classfile/if;->new()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 9
    iget-short v1, p0, Lorg/mozilla/classfile/for;->static:S

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 10
    :cond_3
    iget-object v1, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 11
    iget v1, p0, Lorg/mozilla/classfile/for;->private:I

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method private static T(I)I
    .locals 3

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_3
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static U(IZ)I
    .locals 3

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_2

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0

    :pswitch_3
    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :cond_1
    return v1

    :pswitch_4
    return v2

    :pswitch_5
    return v1

    :cond_2
    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xac
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public static V(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x0

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 1
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    .line 2
    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method public static W(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x0

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    .line 1
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    int-to-byte p0, p0

    .line 4
    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method public static X(J[BI)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    .line 1
    invoke-static {v1, p2, p3}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result p3

    long-to-int p1, p0

    .line 2
    invoke-static {p1, p2, p3}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result p0

    return p0
.end method

.method private static b0(Ljava/lang/String;)I
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x29

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x3

    if-gt v2, v0, :cond_b

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    if-gt v3, v1, :cond_b

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_b

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x5b

    const/16 v8, 0x5a

    const/16 v9, 0x4a

    const/16 v10, 0x49

    const/16 v11, 0x53

    const/16 v12, 0x4c

    const/16 v13, 0x46

    if-eq v0, v1, :cond_7

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v13, :cond_6

    if-eq v14, v12, :cond_4

    if-eq v14, v11, :cond_6

    if-eq v14, v10, :cond_6

    if-eq v14, v9, :cond_3

    if-eq v14, v8, :cond_6

    if-eq v14, v7, :cond_1

    packed-switch v14, :pswitch_data_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_2
    if-ne v14, v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_2

    :cond_2
    if-eq v14, v13, :cond_6

    if-eq v14, v12, :cond_4

    if-eq v14, v11, :cond_6

    if-eq v14, v8, :cond_6

    if-eq v14, v10, :cond_6

    if-eq v14, v9, :cond_6

    packed-switch v14, :pswitch_data_1

    goto :goto_1

    :cond_3
    :pswitch_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v3

    const/16 v14, 0x3b

    .line 7
    invoke-virtual {p0, v14, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    add-int/2addr v0, v3

    if-gt v0, v14, :cond_0

    if-lt v14, v1, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v14, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    :pswitch_1
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_a

    if-eq v1, v12, :cond_a

    if-eq v1, v11, :cond_a

    const/16 v4, 0x56

    if-eq v1, v4, :cond_9

    if-eq v1, v10, :cond_a

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_a

    packed-switch v1, :pswitch_data_2

    goto :goto_7

    :cond_8
    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    :goto_5
    move v2, v0

    goto :goto_7

    :cond_a
    :goto_6
    :pswitch_3
    add-int/2addr v5, v3

    goto :goto_5

    :goto_7
    if-eqz v2, :cond_b

    shl-int/lit8 p0, v6, 0x10

    const v0, 0xffff

    and-int/2addr v0, v5

    or-int/2addr p0, v0

    return p0

    .line 9
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad parameter signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic break(Lorg/mozilla/classfile/for;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/classfile/for;->break:I

    return p0
.end method

.method private c(II)V
    .locals 4

    if-gez p1, :cond_4

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->throws:I

    if-ge p1, v0, :cond_3

    .line 2
    iget v0, p0, Lorg/mozilla/classfile/for;->extends:I

    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/for;->default:[J

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v1, 0x28

    new-array v1, v1, [J

    .line 4
    iput-object v1, p0, Lorg/mozilla/classfile/for;->default:[J

    goto :goto_0

    .line 5
    :cond_1
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v2, p0, Lorg/mozilla/classfile/for;->default:[J

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lorg/mozilla/classfile/for;->extends:I

    .line 9
    iget-object v1, p0, Lorg/mozilla/classfile/for;->default:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long p1, p2

    or-long/2addr p1, v2

    aput-wide p1, v1, v0

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label, no biscuit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c0(I)I
    .locals 3

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, -0x4

    return p0

    :pswitch_1
    const/4 p0, -0x3

    return p0

    :pswitch_2
    const/4 p0, -0x2

    return p0

    :pswitch_3
    const/4 p0, -0x1

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_6
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static synthetic case(IZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/classfile/for;->U(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic catch(Lorg/mozilla/classfile/for;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/classfile/for;->case:I

    return p0
.end method

.method public static synthetic class(Lorg/mozilla/classfile/for;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->case:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mozilla/classfile/for;->case:I

    return v0
.end method

.method public static synthetic const(Lorg/mozilla/classfile/for;)[Lorg/mozilla/classfile/case;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    return-object p0
.end method

.method public static synthetic do(Lorg/mozilla/classfile/for;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/classfile/for;->if:I

    return p0
.end method

.method public static synthetic else(Lorg/mozilla/classfile/for;)S
    .locals 0

    .line 1
    iget-short p0, p0, Lorg/mozilla/classfile/for;->super:S

    return p0
.end method

.method public static synthetic final(Lorg/mozilla/classfile/for;)Lorg/mozilla/javascript/UintMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    return-object p0
.end method

.method public static synthetic for(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/classfile/for;->b0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic goto(Lorg/mozilla/classfile/for;)S
    .locals 0

    .line 1
    iget-short p0, p0, Lorg/mozilla/classfile/for;->final:S

    return p0
.end method

.method private h0(III)V
    .locals 1

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/for;->public(II)V

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    :cond_1
    add-int/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    :cond_2
    add-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    :goto_0
    return-void
.end method

.method public static synthetic if(Lorg/mozilla/classfile/for;)[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/classfile/for;->B()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic new(Lorg/mozilla/classfile/for;)S
    .locals 0

    .line 1
    iget-short p0, p0, Lorg/mozilla/classfile/for;->public:S

    return p0
.end method

.method private p(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    add-int/2addr p1, v0

    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/for;->this:[B

    array-length v2, v1

    if-le p1, v2, :cond_1

    .line 4
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_0

    move v2, p1

    .line 5
    :cond_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v2, p0, Lorg/mozilla/classfile/for;->this:[B

    .line 8
    :cond_1
    iput p1, p0, Lorg/mozilla/classfile/for;->break:I

    return v0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to add to"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lorg/mozilla/classfile/for;->h:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->do:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lorg/mozilla/classfile/for;->do:[I

    goto :goto_0

    .line 4
    :cond_0
    array-length v1, v0

    iget v2, p0, Lorg/mozilla/classfile/for;->if:I

    if-ne v1, v2, :cond_1

    mul-int/lit8 v1, v2, 0x2

    .line 5
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v1, p0, Lorg/mozilla/classfile/for;->do:[I

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/for;->do:[I

    iget v1, p0, Lorg/mozilla/classfile/for;->if:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/for;->if:I

    aput p1, v0, v1

    :cond_2
    return-void
.end method

.method private s(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for;->p(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for;->this:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method public static synthetic super(Lorg/mozilla/classfile/for;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/for;->this:[B

    return-object p0
.end method

.method private t(I)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for;->p(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for;->this:[B

    invoke-static {p1, v1, v0}, Lorg/mozilla/classfile/for;->V(I[BI)I

    return-void
.end method

.method public static synthetic this(Lorg/mozilla/classfile/for;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/for;->do:[I

    return-object p0
.end method

.method public static synthetic throw(Lorg/mozilla/classfile/for;)Lorg/mozilla/classfile/try;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    return-object p0
.end method

.method public static synthetic try(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/classfile/for;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static w(I)C
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad operand"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x4a

    return p0

    :pswitch_1
    const/16 p0, 0x49

    return p0

    :pswitch_2
    const/16 p0, 0x53

    return p0

    :pswitch_3
    const/16 p0, 0x42

    return p0

    :pswitch_4
    const/16 p0, 0x44

    return p0

    :pswitch_5
    const/16 p0, 0x46

    return p0

    :pswitch_6
    const/16 p0, 0x43

    return p0

    :pswitch_7
    const/16 p0, 0x5a

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic while(I)C
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/classfile/for;->w(I)C

    move-result p0

    return p0
.end method

.method private static x(I)V
    .locals 2

    if-gez p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack underflow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too big stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static y(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method private static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final F(I)[C
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->abstract:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 2
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/classfile/for;->abstract:[C

    .line 4
    :cond_1
    iget-object p1, p0, Lorg/mozilla/classfile/for;->abstract:[C

    return-object p1
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->new:Ljava/lang/String;

    return-object v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    return v0
.end method

.method public I(I)I
    .locals 1

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->throws:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->switch:[I

    aget p1, v0, p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K()S
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    return v0
.end method

.method public M(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->public(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public N(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->O(I)V

    return-void
.end method

.method public O(I)V
    .locals 3

    if-gez p1, :cond_2

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->throws:I

    if-gt p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->switch:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Lorg/mozilla/classfile/for;->break:I

    aput v1, v0, p1

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only mark label once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad label, no biscuit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(IS)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->O(I)V

    .line 2
    iput-short p2, p0, Lorg/mozilla/classfile/for;->const:S

    return-void
.end method

.method public final Q(II)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for;->q(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 3
    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/classfile/for;->a0(III)V

    return-void
.end method

.method public final R(III)V
    .locals 1

    if-ltz p3, :cond_0

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->final:S

    if-gt p3, v0, :cond_0

    int-to-short p3, p3

    .line 2
    iput-short p3, p0, Lorg/mozilla/classfile/for;->const:S

    .line 3
    iget p3, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-direct {p0, p3}, Lorg/mozilla/classfile/for;->q(I)V

    .line 4
    iget-object p3, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-virtual {p3, v0, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 5
    iget p3, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/classfile/for;->a0(III)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad stack index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final S(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/for;->q(I)V

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 3
    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/classfile/for;->a0(III)V

    return-void
.end method

.method public Y(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lorg/mozilla/classfile/for;->native:S

    return-void
.end method

.method public Z(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    return-void
.end method

.method public a(I)V
    .locals 2

    const/16 v0, 0x1e

    const/16 v1, 0x16

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public a0(III)V
    .locals 5

    if-ltz p3, :cond_5

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->break:I

    if-lt v0, p3, :cond_5

    const/4 v1, -0x1

    if-lt p2, v1, :cond_4

    xor-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x3

    if-gez p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    :goto_0
    if-ltz p1, :cond_3

    add-int/lit8 v3, v0, -0x10

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-lt v3, p1, :cond_3

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for;->this:[B

    aget-byte v3, v1, p1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xaa

    if-ne v3, v4, :cond_2

    if-ltz v2, :cond_1

    add-int/lit8 v3, v2, 0x4

    if-lt v0, v3, :cond_1

    sub-int/2addr p3, p1

    .line 3
    invoke-static {p3, v1, v2}, Lorg/mozilla/classfile/for;->W(I[BI)I

    return-void

    .line 4
    :cond_1
    new-instance p1, Lorg/mozilla/classfile/for$if;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too big case index: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not offset of tableswitch statement"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is outside a possible range of tableswitch in already generated code"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad case index: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad jump target: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract(I)V
    .locals 2

    const/16 v0, 0x43

    const/16 v1, 0x38

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/16 v0, 0x3f

    const/16 v1, 0x37

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public continue(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p2

    .line 3
    iget-object v0, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    new-instance v1, Lorg/mozilla/classfile/do;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/classfile/do;-><init>(SSS)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public d(S)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lorg/mozilla/classfile/for;->goto:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    new-array v2, v1, [I

    .line 3
    iput-object v2, p0, Lorg/mozilla/classfile/for;->else:[I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/for;->else:[I

    array-length v3, v2

    if-ne v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    .line 5
    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 6
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v3, p0, Lorg/mozilla/classfile/for;->else:[I

    .line 8
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/for;->else:[I

    iget v3, p0, Lorg/mozilla/classfile/for;->break:I

    shl-int/lit8 v1, v3, 0x10

    add-int/2addr v1, p1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 9
    iput v0, p0, Lorg/mozilla/classfile/for;->goto:I

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v3

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v5

    .line 3
    new-instance v0, Lorg/mozilla/classfile/if;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/classfile/if;-><init>(Ljava/lang/String;SLjava/lang/String;SS)V

    iput-object v0, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    .line 4
    new-instance p1, Lorg/mozilla/javascript/UintMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    .line 5
    iget-object p1, p0, Lorg/mozilla/classfile/for;->throw:Lorg/mozilla/javascript/ObjArray;

    iget-object p2, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->q(I)V

    return-void
.end method

.method public default(I)V
    .locals 2

    const/16 v0, 0x4b

    const/16 v1, 0x3a

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public e(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/try;->if(D)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/for;->public(II)V

    return-void
.end method

.method public e0(S)V
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    if-eqz v0, :cond_10

    .line 2
    invoke-direct {p0}, Lorg/mozilla/classfile/for;->E()V

    .line 3
    iput-short p1, p0, Lorg/mozilla/classfile/for;->super:S

    .line 4
    sget-boolean p1, Lorg/mozilla/classfile/for;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/mozilla/classfile/for;->D()V

    .line 6
    new-instance p1, Lorg/mozilla/classfile/for$new;

    invoke-direct {p1, p0}, Lorg/mozilla/classfile/for$new;-><init>(Lorg/mozilla/classfile/for;)V

    .line 7
    invoke-virtual {p1}, Lorg/mozilla/classfile/for$new;->class()V

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 8
    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/for;->else:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    iget v1, p0, Lorg/mozilla/classfile/for;->goto:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lorg/mozilla/classfile/for$new;->new()I

    move-result v4

    if-lez v4, :cond_3

    add-int/lit8 v4, v4, 0x6

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 13
    :goto_3
    iget v5, p0, Lorg/mozilla/classfile/for;->break:I

    add-int/lit8 v5, v5, 0xe

    const/4 v6, 0x2

    add-int/2addr v5, v6

    iget v7, p0, Lorg/mozilla/classfile/for;->case:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v5, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    const/high16 v1, 0x10000

    if-gt v5, v1, :cond_f

    .line 14
    new-array v1, v5, [B

    .line 15
    iget-object v3, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string v7, "Code"

    invoke-virtual {v3, v7}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v3

    .line 16
    invoke-static {v3, v1, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    add-int/lit8 v5, v5, -0x6

    .line 17
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v3

    .line 18
    iget-short v5, p0, Lorg/mozilla/classfile/for;->final:S

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 19
    iget-short v5, p0, Lorg/mozilla/classfile/for;->super:S

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 20
    iget v5, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v3

    .line 21
    iget-object v5, p0, Lorg/mozilla/classfile/for;->this:[B

    iget v7, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-static {v5, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget v5, p0, Lorg/mozilla/classfile/for;->break:I

    add-int/2addr v3, v5

    .line 23
    iget v5, p0, Lorg/mozilla/classfile/for;->case:I

    if-lez v5, :cond_7

    .line 24
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    const/4 v5, 0x0

    .line 25
    :goto_4
    iget v7, p0, Lorg/mozilla/classfile/for;->case:I

    if-ge v5, v7, :cond_8

    .line 26
    iget-object v7, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    aget-object v7, v7, v5

    .line 27
    iget v8, v7, Lorg/mozilla/classfile/case;->do:I

    invoke-virtual {p0, v8}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v8

    int-to-short v8, v8

    .line 28
    iget v9, v7, Lorg/mozilla/classfile/case;->if:I

    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v9

    int-to-short v9, v9

    .line 29
    iget v10, v7, Lorg/mozilla/classfile/case;->for:I

    invoke-virtual {p0, v10}, Lorg/mozilla/classfile/for;->I(I)I

    move-result v10

    int-to-short v10, v10

    .line 30
    iget-short v7, v7, Lorg/mozilla/classfile/case;->new:S

    const/4 v11, -0x1

    if-eq v8, v11, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v10, v11, :cond_4

    .line 31
    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 32
    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 33
    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 34
    invoke-static {v7, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handler label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "end label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "start label not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_7
    invoke-static {v2, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 39
    :cond_8
    iget-object v5, p0, Lorg/mozilla/classfile/for;->else:[I

    const/4 v7, 0x1

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 40
    :goto_5
    iget-object v8, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    if-eqz v8, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    if-lez v4, :cond_b

    add-int/lit8 v5, v5, 0x1

    .line 41
    :cond_b
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 42
    iget-object v5, p0, Lorg/mozilla/classfile/for;->else:[I

    if-eqz v5, :cond_c

    .line 43
    iget-object v5, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string v8, "LineNumberTable"

    .line 44
    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v5

    .line 45
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 46
    iget v5, p0, Lorg/mozilla/classfile/for;->goto:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    .line 47
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v3

    .line 48
    iget v5, p0, Lorg/mozilla/classfile/for;->goto:I

    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    const/4 v5, 0x0

    .line 49
    :goto_6
    iget v8, p0, Lorg/mozilla/classfile/for;->goto:I

    if-ge v5, v8, :cond_c

    .line 50
    iget-object v8, p0, Lorg/mozilla/classfile/for;->else:[I

    aget v8, v8, v5

    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 51
    :cond_c
    iget-object v5, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    if-eqz v5, :cond_d

    .line 52
    iget-object v5, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string v8, "LocalVariableTable"

    .line 53
    invoke-virtual {v5, v8}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v5

    .line 54
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 55
    iget-object v5, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v5

    mul-int/lit8 v8, v5, 0xa

    add-int/2addr v8, v6

    .line 56
    invoke-static {v8, v1, v3}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v3

    .line 57
    invoke-static {v5, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v5, :cond_d

    .line 58
    iget-object v9, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 59
    aget v10, v9, v2

    .line 60
    aget v11, v9, v7

    .line 61
    aget v12, v9, v6

    const/4 v13, 0x3

    .line 62
    aget v9, v9, v13

    .line 63
    iget v13, p0, Lorg/mozilla/classfile/for;->break:I

    sub-int/2addr v13, v12

    .line 64
    invoke-static {v12, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 65
    invoke-static {v13, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 66
    invoke-static {v10, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 67
    invoke-static {v11, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 68
    invoke-static {v9, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    if-lez v4, :cond_e

    .line 69
    iget-object v4, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string v5, "StackMapTable"

    .line 70
    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v4

    .line 71
    invoke-static {v4, v1, v3}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v3

    .line 72
    invoke-virtual {p1, v1, v3}, Lorg/mozilla/classfile/for$new;->continue([BI)I

    .line 73
    :cond_e
    iget-object p1, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/if;->try([B)V

    .line 74
    iput-object v0, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    .line 75
    iput v2, p0, Lorg/mozilla/classfile/for;->case:I

    .line 76
    iput v2, p0, Lorg/mozilla/classfile/for;->goto:I

    .line 77
    iput v2, p0, Lorg/mozilla/classfile/for;->break:I

    .line 78
    iput-object v0, p0, Lorg/mozilla/classfile/for;->class:Lorg/mozilla/classfile/if;

    .line 79
    iput-short v2, p0, Lorg/mozilla/classfile/for;->final:S

    .line 80
    iput-short v2, p0, Lorg/mozilla/classfile/for;->const:S

    .line 81
    iput v2, p0, Lorg/mozilla/classfile/for;->throws:I

    .line 82
    iput v2, p0, Lorg/mozilla/classfile/for;->extends:I

    .line 83
    iput-object v0, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    .line 84
    iput-object v0, p0, Lorg/mozilla/classfile/for;->do:[I

    .line 85
    iput v2, p0, Lorg/mozilla/classfile/for;->if:I

    .line 86
    iput-object v0, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    return-void

    .line 87
    :cond_f
    new-instance p1, Lorg/mozilla/classfile/for$if;

    const-string v0, "generated bytecode for method exceeds 64K limit."

    invoke-direct {p1, v0}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No method to stop"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public extends(I)V
    .locals 2

    const/16 v0, 0x26

    const/16 v1, 0x18

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public f(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->for(F)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/for;->public(II)V

    return-void
.end method

.method public f0()[B
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string v2, "BootstrapMethods"

    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-short v3, p0, Lorg/mozilla/classfile/for;->static:S

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 4
    iget-object v3, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string v4, "SourceFile"

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/classfile/for;->L()I

    move-result v4

    .line 6
    new-array v5, v4, [B

    const v6, -0x35014542    # -8346975.0f

    .line 7
    invoke-static {v6, v5, v1}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v6

    .line 8
    sget v7, Lorg/mozilla/classfile/for;->g:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    .line 9
    sget v7, Lorg/mozilla/classfile/for;->f:I

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    .line 10
    iget-object v7, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v7, v5, v6}, Lorg/mozilla/classfile/try;->static([BI)I

    move-result v6

    .line 11
    iget-short v7, p0, Lorg/mozilla/classfile/for;->native:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    .line 12
    iget-short v7, p0, Lorg/mozilla/classfile/for;->public:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    .line 13
    iget-short v7, p0, Lorg/mozilla/classfile/for;->return:S

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    .line 14
    iget-object v7, p0, Lorg/mozilla/classfile/for;->import:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    const/4 v7, 0x0

    .line 15
    :goto_2
    iget-object v8, p0, Lorg/mozilla/classfile/for;->import:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 16
    iget-object v8, p0, Lorg/mozilla/classfile/for;->import:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    .line 17
    invoke-static {v8, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 18
    :cond_2
    iget-object v7, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    const/4 v7, 0x0

    .line 19
    :goto_3
    iget-object v8, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 20
    iget-object v8, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/do;

    .line 21
    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/do;->for([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 22
    :cond_3
    iget-object v7, p0, Lorg/mozilla/classfile/for;->throw:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    invoke-static {v7, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v6

    const/4 v7, 0x0

    .line 23
    :goto_4
    iget-object v8, p0, Lorg/mozilla/classfile/for;->throw:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 24
    iget-object v8, p0, Lorg/mozilla/classfile/for;->throw:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/classfile/if;

    .line 25
    invoke-virtual {v8, v5, v6}, Lorg/mozilla/classfile/if;->case([BI)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 26
    :cond_4
    invoke-static {v2, v5, v6}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v2

    .line 27
    iget-object v6, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    const/4 v7, 0x2

    if-eqz v6, :cond_5

    .line 28
    invoke-static {v0, v5, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v0

    .line 29
    iget v2, p0, Lorg/mozilla/classfile/for;->private:I

    add-int/2addr v2, v7

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v0

    .line 30
    iget-object v2, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    invoke-static {v2, v5, v0}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    .line 31
    :goto_5
    iget-object v6, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 32
    iget-object v6, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/classfile/for$do;

    .line 33
    iget-object v8, v6, Lorg/mozilla/classfile/for$do;->do:[B

    array-length v9, v8

    invoke-static {v8, v1, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v6, v6, Lorg/mozilla/classfile/for$do;->do:[B

    array-length v6, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 35
    :cond_5
    iget-short v0, p0, Lorg/mozilla/classfile/for;->static:S

    if-eqz v0, :cond_6

    .line 36
    invoke-static {v3, v5, v2}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v0

    .line 37
    invoke-static {v7, v5, v0}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result v0

    .line 38
    iget-short v1, p0, Lorg/mozilla/classfile/for;->static:S

    invoke-static {v1, v5, v0}, Lorg/mozilla/classfile/for;->V(I[BI)I

    move-result v2

    :cond_6
    if-ne v2, v4, :cond_7

    return-object v5

    .line 39
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public finally(I)V
    .locals 2

    const/16 v0, 0x47

    const/16 v1, 0x39

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public g(I)V
    .locals 4

    const/4 v0, 0x3

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    const/4 v3, 0x5

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_0

    const/16 v0, 0x12

    .line 1
    iget-object v1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/try;->new(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/for;->public(II)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    .line 3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/for;->native(I)V

    :goto_0
    return-void
.end method

.method public g0(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/classfile/for;->f0()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public h(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/classfile/try;->try(J)I

    move-result p1

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/for;->public(II)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->else(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/classfile/for;->public(II)V

    return-void
.end method

.method public implements(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->import:Lorg/mozilla/javascript/ObjArray;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public import()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/for;->throws:I

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for;->switch:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Lorg/mozilla/classfile/for;->switch:[I

    goto :goto_0

    .line 4
    :cond_1
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v2, p0, Lorg/mozilla/classfile/for;->switch:[I

    :cond_2
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 7
    iput v1, p0, Lorg/mozilla/classfile/for;->throws:I

    .line 8
    iget-object v1, p0, Lorg/mozilla/classfile/for;->switch:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    return v0
.end method

.method public instanceof(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p4}, Lorg/mozilla/classfile/for;->b0(Ljava/lang/String;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x10

    int-to-short v0, v0

    .line 2
    iget-short v2, p0, Lorg/mozilla/classfile/for;->const:S

    add-int/2addr v2, v0

    .line 3
    invoke-static {p1}, Lorg/mozilla/classfile/for;->c0(I)I

    move-result v0

    add-int/2addr v2, v0

    if-ltz v2, :cond_0

    const/16 v0, 0x7fff

    if-ge v0, v2, :cond_1

    .line 4
    :cond_0
    invoke-static {v2}, Lorg/mozilla/classfile/for;->x(I)V

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for method reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    .line 8
    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/try;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    .line 9
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->t(I)V

    add-int/lit8 v1, v1, 0x1

    .line 10
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/for;->s(I)V

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {p1, p2, p3, p4}, Lorg/mozilla/classfile/try;->class(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p1

    .line 13
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->t(I)V

    :goto_0
    int-to-short p1, v2

    .line 14
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 15
    iget-short p2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v2, p2, :cond_3

    .line 16
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public interface(Ljava/lang/String;Ljava/lang/String;SJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p2

    .line 3
    new-instance v0, Lorg/mozilla/classfile/do;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/do;-><init>(SSS)V

    .line 4
    iget-object p1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string p2, "ConstantValue"

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    iget-object p2, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    .line 5
    invoke-virtual {p2, p4, p5}, Lorg/mozilla/classfile/try;->try(J)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 6
    invoke-virtual {v0, p1, p3, p4, p2}, Lorg/mozilla/classfile/do;->if(SSSI)V

    .line 7
    iget-object p1, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public j()V
    .locals 1

    const/16 v0, 0x2a

    .line 1
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/for;->native(I)V

    return-void
.end method

.method public k(D)V
    .locals 6

    const/16 v0, 0x77

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    cmpl-double v5, p1, v3

    if-nez v5, :cond_0

    const/16 v5, 0xe

    .line 1
    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/for;->native(I)V

    div-double/2addr v1, p1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_1

    :cond_0
    cmpl-double v5, p1, v1

    if-eqz v5, :cond_2

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v5, p1, v1

    if-nez v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/for;->e(D)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0xf

    .line 4
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/for;->native(I)V

    cmpg-double v1, p1, v3

    if-gez v1, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/for;->native(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public l(I)V
    .locals 2

    int-to-byte v0, p1

    if-ne v0, p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x5

    if-gt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/for;->public(II)V

    goto :goto_0

    :cond_2
    int-to-short v0, p1

    if-ne v0, p1, :cond_3

    const/16 p1, 0x11

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/classfile/for;->public(II)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->g(I)V

    :goto_0
    return-void
.end method

.method public m(J)V
    .locals 4

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/for;->l(I)V

    const/16 p1, 0x85

    .line 2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/for;->h(J)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/mozilla/classfile/try;->import(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v3, 0xbb

    const-string v4, "java/lang/StringBuilder"

    .line 4
    invoke-virtual {p0, v3, v4}, Lorg/mozilla/classfile/for;->static(ILjava/lang/String;)V

    const/16 v3, 0x59

    .line 5
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/for;->native(I)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/for;->l(I)V

    const/16 v5, 0xb7

    const-string v6, "<init>"

    const-string v7, "(I)V"

    .line 7
    invoke-virtual {p0, v5, v4, v6, v7}, Lorg/mozilla/classfile/for;->instanceof(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/for;->native(I)V

    .line 9
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/for;->i(Ljava/lang/String;)V

    const/16 v2, 0xb6

    const-string v5, "append"

    const-string v6, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    .line 11
    invoke-virtual {p0, v2, v4, v5, v6}, Lorg/mozilla/classfile/for;->instanceof(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x57

    .line 12
    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/for;->native(I)V

    if-ne v1, v0, :cond_1

    const-string p1, "toString"

    const-string v0, "()Ljava/lang/String;"

    .line 13
    invoke-virtual {p0, v2, v4, p1, v0}, Lorg/mozilla/classfile/for;->instanceof(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    iget-object v2, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v2, p1, v1, v0}, Lorg/mozilla/classfile/try;->import(Ljava/lang/String;II)I

    move-result v2

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_0
.end method

.method public native(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/mozilla/classfile/for;->T(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    invoke-static {p1}, Lorg/mozilla/classfile/for;->c0(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 3
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/for;->x(I)V

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    int-to-short v1, v0

    .line 5
    iput-short v1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 6
    iget-short v2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v0, v2, :cond_2

    .line 7
    iput-short v1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_2
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    .line 8
    iget p1, p0, Lorg/mozilla/classfile/for;->break:I

    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->q(I)V

    :cond_3
    return-void

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected operands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/for;->native(I)V

    return-void
.end method

.method public package(IIILjava/lang/String;)V
    .locals 2

    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_5

    and-int v1, p2, v0

    if-ne v1, v0, :cond_4

    and-int v1, p3, v0

    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    .line 2
    invoke-virtual {v1, p4}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p4

    .line 3
    :goto_0
    new-instance v1, Lorg/mozilla/classfile/case;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/mozilla/classfile/case;-><init>(IIIS)V

    .line 4
    iget p1, p0, Lorg/mozilla/classfile/for;->case:I

    if-nez p1, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [Lorg/mozilla/classfile/case;

    .line 5
    iput-object p2, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    array-length p3, p2

    if-ne p1, p3, :cond_2

    mul-int/lit8 p3, p1, 0x2

    .line 7
    new-array p3, p3, [Lorg/mozilla/classfile/case;

    .line 8
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object p3, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    .line 10
    :cond_2
    :goto_1
    iget-object p2, p0, Lorg/mozilla/classfile/for;->try:[Lorg/mozilla/classfile/case;

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    .line 11
    iput p1, p0, Lorg/mozilla/classfile/for;->case:I

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad handlerLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad endLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad startLabel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public private(I)V
    .locals 2

    const/16 v0, 0x22

    const/16 v1, 0x17

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public protected(I)V
    .locals 2

    const/16 v0, 0x1a

    const/16 v1, 0x15

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public public(II)V
    .locals 5

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    invoke-static {p1}, Lorg/mozilla/classfile/for;->c0(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/for;->x(I)V

    :cond_1
    const/16 v1, 0xb4

    const/high16 v2, 0x10000

    if-eq p1, v1, :cond_11

    const/16 v1, 0xb5

    if-eq p1, v1, :cond_11

    const/16 v1, 0xbc

    const-string v3, "out of range index"

    const/16 v4, 0x100

    if-eq p1, v1, :cond_f

    const/16 v1, 0xc6

    if-eq p1, v1, :cond_a

    const/16 v1, 0xc7

    if-eq p1, v1, :cond_a

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected opcode for 1 operand"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    iget v1, p0, Lorg/mozilla/classfile/for;->break:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/for;->q(I)V

    goto/16 :goto_2

    :pswitch_1
    if-ltz p2, :cond_3

    if-le v2, p2, :cond_3

    if-lt p2, v4, :cond_2

    const/16 v1, 0xc4

    .line 5
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 6
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 7
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 9
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->s(I)V

    goto/16 :goto_4

    .line 10
    :cond_3
    new-instance p1, Lorg/mozilla/classfile/for$if;

    const-string p2, "out of range variable"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-ltz p2, :cond_7

    if-ge p2, v2, :cond_7

    const/16 v1, 0x13

    if-ge p2, v4, :cond_5

    if-eq p1, v1, :cond_5

    const/16 v2, 0x14

    if-ne p1, v2, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 12
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->s(I)V

    goto/16 :goto_4

    :cond_5
    :goto_0
    const/16 v2, 0x12

    if-ne p1, v2, :cond_6

    .line 13
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/for;->s(I)V

    goto :goto_1

    .line 14
    :cond_6
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 15
    :goto_1
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    goto/16 :goto_4

    .line 16
    :cond_7
    new-instance p1, Lorg/mozilla/classfile/for$if;

    invoke-direct {p1, v3}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    int-to-short v1, p2

    if-ne v1, p2, :cond_8

    .line 17
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 18
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    goto/16 :goto_4

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range short"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    int-to-byte v1, p2

    if-ne v1, p2, :cond_9

    .line 20
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 21
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/for;->s(I)V

    goto/16 :goto_4

    .line 22
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range byte"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    :pswitch_5
    const/high16 v1, -0x80000000

    and-int v2, p2, v1

    if-eq v2, v1, :cond_c

    if-ltz p2, :cond_b

    const v3, 0xffff

    if-gt p2, v3, :cond_b

    goto :goto_3

    .line 23
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad label for branch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_c
    :goto_3
    iget v3, p0, Lorg/mozilla/classfile/for;->break:I

    .line 25
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    if-eq v2, v1, :cond_d

    .line 26
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    add-int/2addr p2, v3

    .line 27
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->q(I)V

    .line 28
    iget-object p1, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p1, p2, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_4

    .line 29
    :cond_d
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/for;->I(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    sub-int p2, p1, v3

    .line 30
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    .line 31
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->q(I)V

    .line 32
    iget-object p2, p0, Lorg/mozilla/classfile/for;->for:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {p2, p1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_4

    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 33
    invoke-direct {p0, p2, v3}, Lorg/mozilla/classfile/for;->c(II)V

    const/4 p1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->t(I)V

    goto :goto_4

    :cond_f
    if-ltz p2, :cond_10

    if-ge p2, v4, :cond_10

    .line 35
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 36
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->s(I)V

    goto :goto_4

    .line 37
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-ltz p2, :cond_13

    if-ge p2, v2, :cond_13

    .line 38
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 39
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    :goto_4
    int-to-short p1, v0

    .line 40
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 41
    iget-short p2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v0, p2, :cond_12

    .line 42
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_12
    return-void

    .line 43
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public r(II)I
    .locals 7

    if-gt p1, p2, :cond_4

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    const/16 v1, 0xaa

    invoke-static {v1}, Lorg/mozilla/classfile/for;->c0(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/for;->x(I)V

    :cond_1
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    .line 3
    iget v2, p0, Lorg/mozilla/classfile/for;->break:I

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v3, v1

    .line 4
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/for;->p(I)I

    move-result v1

    .line 5
    iget-object v3, p0, Lorg/mozilla/classfile/for;->this:[B

    add-int/lit8 v4, v1, 0x1

    const/16 v5, -0x56

    aput-byte v5, v3, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    iget-object v3, p0, Lorg/mozilla/classfile/for;->this:[B

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    aput-byte v6, v3, v4

    add-int/lit8 v2, v2, -0x1

    move v4, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x4

    .line 7
    iget-object v2, p0, Lorg/mozilla/classfile/for;->this:[B

    invoke-static {p1, v2, v4}, Lorg/mozilla/classfile/for;->W(I[BI)I

    move-result p1

    .line 8
    iget-object v2, p0, Lorg/mozilla/classfile/for;->this:[B

    invoke-static {p2, v2, p1}, Lorg/mozilla/classfile/for;->W(I[BI)I

    int-to-short p1, v0

    .line 9
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 10
    iget-short p2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v0, p2, :cond_3

    .line 11
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_3
    return v1

    .line 12
    :cond_4
    new-instance v0, Lorg/mozilla/classfile/for$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public return(III)V
    .locals 3

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    invoke-static {p1}, Lorg/mozilla/classfile/for;->c0(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/for;->x(I)V

    :cond_1
    const/high16 v1, 0x10000

    const/16 v2, 0x84

    if-ne p1, v2, :cond_6

    if-ltz p2, :cond_5

    if-le v1, p2, :cond_5

    if-ltz p3, :cond_4

    if-le v1, p3, :cond_4

    const/16 p1, 0xff

    if-gt p2, p1, :cond_3

    const/16 p1, -0x80

    if-lt p3, p1, :cond_3

    const/16 p1, 0x7f

    if-le p3, p1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/for;->s(I)V

    .line 4
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->s(I)V

    .line 5
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/for;->s(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p1, 0xc4

    .line 6
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 7
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/for;->s(I)V

    .line 8
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    .line 9
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/for;->t(I)V

    goto :goto_1

    .line 10
    :cond_4
    new-instance p1, Lorg/mozilla/classfile/for$if;

    const-string p2, "out of range increment"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    new-instance p1, Lorg/mozilla/classfile/for$if;

    const-string p2, "out of range variable"

    invoke-direct {p1, p2}, Lorg/mozilla/classfile/for$if;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 v2, 0xc5

    if-ne p1, v2, :cond_a

    if-ltz p2, :cond_9

    if-ge p2, v1, :cond_9

    if-ltz p3, :cond_8

    const/16 p1, 0x100

    if-ge p3, p1, :cond_8

    .line 12
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/for;->s(I)V

    .line 13
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    .line 14
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/for;->s(I)V

    :goto_1
    int-to-short p1, v0

    .line 15
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 16
    iget-short p2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v0, p2, :cond_7

    .line 17
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_7
    return-void

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range dimensions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out of range index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected opcode for 2 operands"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    invoke-static {p1}, Lorg/mozilla/classfile/for;->c0(I)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/for;->x(I)V

    :cond_1
    const/16 v1, 0xbb

    if-eq p1, v1, :cond_3

    const/16 v1, 0xbd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc0

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for class reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v1, p2}, Lorg/mozilla/classfile/try;->do(Ljava/lang/String;)S

    move-result p2

    .line 5
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 6
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    int-to-short p1, v0

    .line 7
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 8
    iget-short p2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v0, p2, :cond_4

    .line 9
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_4
    return-void
.end method

.method public strictfp(Ljava/lang/String;Ljava/lang/String;SD)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p2

    .line 3
    new-instance v0, Lorg/mozilla/classfile/do;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/do;-><init>(SSS)V

    .line 4
    iget-object p1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string p2, "ConstantValue"

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    iget-object p2, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    .line 5
    invoke-virtual {p2, p4, p5}, Lorg/mozilla/classfile/try;->if(D)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 6
    invoke-virtual {v0, p1, p3, p4, p2}, Lorg/mozilla/classfile/do;->if(SSSI)V

    .line 7
    iget-object p1, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public switch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    invoke-static {p1}, Lorg/mozilla/classfile/for;->c0(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad opcode for field reference"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sub-int/2addr v0, v1

    goto :goto_2

    :pswitch_1
    add-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_2

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_3

    .line 4
    :cond_2
    invoke-static {v0}, Lorg/mozilla/classfile/for;->x(I)V

    .line 5
    :cond_3
    iget-object v1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v1, p2, p3, p4}, Lorg/mozilla/classfile/try;->goto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result p2

    .line 6
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->s(I)V

    .line 7
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->t(I)V

    int-to-short p1, v0

    .line 8
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 9
    iget-short p2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v0, p2, :cond_4

    .line 10
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs synchronized(Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/classfile/for$for;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lorg/mozilla/classfile/for;->f:I

    const/16 v1, 0x33

    if-lt v0, v1, :cond_5

    .line 2
    invoke-static {p2}, Lorg/mozilla/classfile/for;->b0(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    .line 3
    iget-short v1, p0, Lorg/mozilla/classfile/for;->const:S

    add-int/2addr v1, v0

    if-ltz v1, :cond_0

    const/16 v0, 0x7fff

    if-ge v0, v1, :cond_1

    .line 4
    :cond_0
    invoke-static {v1}, Lorg/mozilla/classfile/for;->x(I)V

    .line 5
    :cond_1
    new-instance v0, Lorg/mozilla/classfile/for$do;

    invoke-direct {v0, p0, p3, p4}, Lorg/mozilla/classfile/for$do;-><init>(Lorg/mozilla/classfile/for;Lorg/mozilla/classfile/for$for;[Ljava/lang/Object;)V

    .line 6
    iget-object p3, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    if-nez p3, :cond_2

    .line 7
    new-instance p3, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {p3}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object p3, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    .line 8
    :cond_2
    iget-object p3, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ObjArray;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_3

    .line 9
    iget-object p3, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p3}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p3

    .line 10
    iget-object p4, p0, Lorg/mozilla/classfile/for;->package:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p4, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 11
    iget p4, p0, Lorg/mozilla/classfile/for;->private:I

    iget-object v0, v0, Lorg/mozilla/classfile/for$do;->do:[B

    array-length v0, v0

    add-int/2addr p4, v0

    iput p4, p0, Lorg/mozilla/classfile/for;->private:I

    .line 12
    :cond_3
    iget-object p4, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {p4, p1, p2, p3}, Lorg/mozilla/classfile/try;->break(Ljava/lang/String;Ljava/lang/String;I)S

    move-result p1

    const/16 p2, 0xba

    .line 13
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/for;->s(I)V

    .line 14
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->t(I)V

    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/for;->t(I)V

    int-to-short p1, v1

    .line 16
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 17
    iget-short p2, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v1, p2, :cond_4

    .line 18
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_4
    return-void

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please build and run with JDK 1.7 for invokedynamic support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public throws(I)V
    .locals 2

    const/16 v0, 0x2a

    const/16 v1, 0x19

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public transient(I)V
    .locals 2

    const/16 v0, 0x3b

    const/16 v1, 0x36

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/for;->h0(III)V

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    .line 3
    iget-object p1, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {p1}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object p1, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    .line 5
    :cond_0
    iget-object p1, p0, Lorg/mozilla/classfile/for;->finally:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public v(I)V
    .locals 2

    .line 1
    iget-short v0, p0, Lorg/mozilla/classfile/for;->const:S

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    const/16 p1, 0x7fff

    if-ge p1, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/for;->x(I)V

    :cond_1
    int-to-short p1, v0

    .line 3
    iput-short p1, p0, Lorg/mozilla/classfile/for;->const:S

    .line 4
    iget-short v1, p0, Lorg/mozilla/classfile/for;->final:S

    if-le v0, v1, :cond_2

    .line 5
    iput-short p1, p0, Lorg/mozilla/classfile/for;->final:S

    :cond_2
    return-void
.end method

.method public volatile(Ljava/lang/String;Ljava/lang/String;SI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p2

    .line 3
    new-instance v0, Lorg/mozilla/classfile/do;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/classfile/do;-><init>(SSS)V

    .line 4
    iget-object p1, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    const-string p2, "ConstantValue"

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/try;->final(Ljava/lang/String;)S

    move-result p1

    iget-object p2, p0, Lorg/mozilla/classfile/for;->catch:Lorg/mozilla/classfile/try;

    .line 5
    invoke-virtual {p2, p4}, Lorg/mozilla/classfile/try;->new(I)I

    move-result p2

    const/4 p3, 0x0

    .line 6
    invoke-virtual {v0, p1, p3, p3, p2}, Lorg/mozilla/classfile/do;->if(SSSI)V

    .line 7
    iget-object p1, p0, Lorg/mozilla/classfile/for;->while:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    return-void
.end method
