.class public Lfreemarker/core/z4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/z4$if;
    }
.end annotation


# static fields
.field private static final goto:Lfreemarker/log/if;


# instance fields
.field private case:[Ljava/lang/Object;

.field private final do:Ljava/lang/String;

.field private else:Lfreemarker/template/static;

.field private for:Lfreemarker/core/h0;

.field private final if:[Ljava/lang/Object;

.field private new:Z

.field private try:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.runtime"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/core/z4;->goto:Lfreemarker/log/if;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/z4;->do:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lfreemarker/core/z4;->if:[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lfreemarker/core/z4;->if:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lfreemarker/core/z4;->do:Ljava/lang/String;

    return-void
.end method

.method private case(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const-string v0, "\r\n"

    const-string v1, "\n"

    .line 1
    invoke-static {p1, v0, v1}, Lfreemarker/template/utility/super;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    .line 2
    invoke-static {p1, v0, v1}, Lfreemarker/template/utility/super;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    .line 3
    invoke-static {p1, v0}, Lfreemarker/template/utility/super;->t(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static const(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lfreemarker/core/z4;->final(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private do(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lfreemarker/core/z4;->else:Lfreemarker/template/static;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_8

    .line 3
    aget-object v3, p2, v2

    .line 4
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 5
    check-cast v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lfreemarker/core/z4;->do(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 6
    :cond_2
    invoke-static {v3}, Lfreemarker/core/z4;->super(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "null"

    :cond_3
    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_6

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    const/4 v7, 0x2

    if-eq v5, v6, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x40

    if-eq v5, v8, :cond_4

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x2f

    if-ne v5, v9, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_6

    .line 11
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_6

    .line 12
    invoke-virtual {v0}, Lfreemarker/template/static;->Z0()I

    move-result v5

    if-ne v5, v7, :cond_5

    const/16 v5, 0x5b

    .line 13
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private static final(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    invoke-static {p0}, Lfreemarker/template/utility/super;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 5
    :cond_4
    :goto_0
    check-cast p0, Ljava/lang/reflect/Member;

    invoke-static {p0}, Lfreemarker/ext/beans/j;->final(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private for(Lfreemarker/core/h0;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x14

    if-le p2, v1, :cond_1

    return v0

    .line 1
    :cond_1
    instance-of v1, p1, Lfreemarker/core/x3;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lfreemarker/core/x3;

    invoke-virtual {v1}, Lfreemarker/core/x3;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 2
    :cond_2
    invoke-virtual {p1}, Lfreemarker/core/h4;->else()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 3
    invoke-virtual {p1, v3}, Lfreemarker/core/h4;->this(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Lfreemarker/core/h0;

    if-eqz v5, :cond_3

    .line 5
    check-cast v4, Lfreemarker/core/h0;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v4, v5}, Lfreemarker/core/z4;->for(Lfreemarker/core/h0;I)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private goto(Ljava/lang/Object;)Lfreemarker/core/z4;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lfreemarker/core/z4;->try:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lfreemarker/core/z4;->try:Ljava/lang/Object;

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 4
    iput-object v0, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_2
    array-length v0, v0

    add-int/lit8 v2, v0, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    iget-object v3, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    aput-object p1, v2, v0

    .line 9
    iput-object v2, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    :goto_1
    return-object p0
.end method

.method private new(Lfreemarker/core/h4;Lfreemarker/core/h0;I)Lfreemarker/core/z4$if;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x32

    if-le p3, v1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/h4;->else()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 2
    invoke-virtual {p1, v2}, Lfreemarker/core/h4;->this(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 3
    new-instance p2, Lfreemarker/core/z4$if;

    invoke-direct {p2, v0}, Lfreemarker/core/z4$if;-><init>(Lfreemarker/core/z4$do;)V

    .line 4
    iput-object p1, p2, Lfreemarker/core/z4$if;->do:Lfreemarker/core/h4;

    .line 5
    invoke-virtual {p1, v2}, Lfreemarker/core/h4;->goto(I)Lfreemarker/core/f3;

    move-result-object p1

    iput-object p1, p2, Lfreemarker/core/z4$if;->if:Lfreemarker/core/f3;

    return-object p2

    .line 6
    :cond_1
    instance-of v4, v3, Lfreemarker/core/h4;

    if-eqz v4, :cond_2

    .line 7
    check-cast v3, Lfreemarker/core/h4;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4}, Lfreemarker/core/z4;->new(Lfreemarker/core/h4;Lfreemarker/core/h0;I)Lfreemarker/core/z4$if;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static super(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lfreemarker/core/z4;->final(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs break([Ljava/lang/Object;)Lfreemarker/core/z4;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/z4;->goto(Ljava/lang/Object;)Lfreemarker/core/z4;

    return-object p0
.end method

.method public varargs catch([Ljava/lang/Object;)Lfreemarker/core/z4;
    .locals 6

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    goto :goto_2

    .line 4
    :cond_1
    array-length v0, v0

    .line 5
    array-length v1, p1

    add-int v2, v0, v1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 7
    iget-object v5, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    aget-object v5, v5, v4

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v3, v1, :cond_3

    add-int v4, v0, v3

    .line 8
    aget-object v5, p1, v3

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iput-object v2, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    :cond_4
    :goto_2
    return-object p0
.end method

.method public class(Lfreemarker/core/b4;Z)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/z4;->try:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/z4;->if:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object p1, p0, Lfreemarker/core/z4;->do:Ljava/lang/String;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-object v2, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lfreemarker/core/z4;->new:Z

    if-eqz v3, :cond_2

    .line 4
    :try_start_0
    invoke-direct {p0, p1, v2, v1}, Lfreemarker/core/z4;->new(Lfreemarker/core/h4;Lfreemarker/core/h0;I)Lfreemarker/core/z4$if;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "For "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p1, Lfreemarker/core/z4$if;->do:Lfreemarker/core/h4;

    invoke-virtual {v2}, Lfreemarker/core/h4;->case()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x60

    .line 8
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lfreemarker/core/z4$if;->if:Lfreemarker/core/f3;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    sget-object v2, Lfreemarker/core/z4;->goto:Lfreemarker/log/if;

    const-string v3, "Error when searching blamer for better error message."

    invoke-virtual {v2, v3, p1}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_2
    :goto_1
    iget-object p1, p0, Lfreemarker/core/z4;->do:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lfreemarker/core/z4;->if:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/z4;->do(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    :goto_2
    const/4 p1, 0x0

    .line 14
    iget-object v2, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_3
    if-ltz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v5, 0x3a

    if-eq v2, v5, :cond_7

    const-string v2, "The blamed expression:\n"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_7
    iget-object v2, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfreemarker/core/z4;->case(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 21
    :goto_5
    array-length v6, v2

    if-ge v5, v6, :cond_9

    if-nez v5, :cond_8

    const-string v6, "==> "

    goto :goto_6

    :cond_8
    const-string v6, "\n    "

    .line 22
    :goto_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const-string v2, "  ["

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->catch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    iget-object v2, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    invoke-direct {p0, v2, v1}, Lfreemarker/core/z4;->for(Lfreemarker/core/h0;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p1, "It has been noticed that you are using ${...} as the sole content of a quoted string. That does nothing but forcably converts the value inside ${...} to string (as it inserts it into the enclosing string). If that\'s not what you meant, just remove the quotation marks, ${ and }; you don\'t need them. If you indeed wanted to convert to string, use myExpression?string instead."

    :cond_a
    if-eqz p2, :cond_15

    .line 28
    iget-object p2, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    if-eqz p2, :cond_b

    array-length v2, p2

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    iget-object v5, p0, Lfreemarker/core/z4;->try:Ljava/lang/Object;

    if-eqz v5, :cond_c

    const/4 v6, 0x1

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_8
    add-int/2addr v2, v6

    if-eqz p1, :cond_d

    const/4 v6, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    add-int/2addr v2, v6

    if-eqz p2, :cond_e

    .line 29
    array-length v6, p2

    if-ne v2, v6, :cond_e

    goto :goto_c

    .line 30
    :cond_e
    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v5, :cond_f

    .line 31
    aput-object v5, v2, v1

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    if-eqz p2, :cond_10

    const/4 p2, 0x0

    .line 32
    :goto_b
    iget-object v5, p0, Lfreemarker/core/z4;->case:[Ljava/lang/Object;

    array-length v6, v5

    if-ge p2, v6, :cond_10

    add-int/lit8 v6, v4, 0x1

    .line 33
    aget-object v5, v5, p2

    aput-object v5, v2, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v6

    goto :goto_b

    :cond_10
    if-eqz p1, :cond_11

    .line 34
    aput-object p1, v2, v4

    :cond_11
    move-object p2, v2

    :goto_c
    if-eqz p2, :cond_15

    .line 35
    array-length p1, p2

    if-lez p1, :cond_15

    const-string p1, "\n\n"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :goto_d
    array-length p1, p2

    const-string v2, "----"

    if-ge v1, p1, :cond_14

    if-eqz v1, :cond_12

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "Tip: "

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    aget-object p1, p2, v1

    .line 42
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_13

    .line 43
    aget-object p1, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 44
    :cond_13
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/z4;->do(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 45
    :cond_14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public else(Lfreemarker/template/static;)Lfreemarker/core/z4;
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/z4;->else:Lfreemarker/template/static;

    return-object p0
.end method

.method public if(Lfreemarker/core/h0;)Lfreemarker/core/z4;
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/z4;->for:Lfreemarker/core/h0;

    return-object p0
.end method

.method public this(Ljava/lang/String;)Lfreemarker/core/z4;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/z4;->goto(Ljava/lang/Object;)Lfreemarker/core/z4;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lfreemarker/core/z4;->class(Lfreemarker/core/b4;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Z)Lfreemarker/core/z4;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/core/z4;->new:Z

    return-object p0
.end method
