.class public abstract Lorg/apache/commons/lang3/text/new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/new$try;,
        Lorg/apache/commons/lang3/text/new$for;,
        Lorg/apache/commons/lang3/text/new$new;,
        Lorg/apache/commons/lang3/text/new$do;,
        Lorg/apache/commons/lang3/text/new$if;
    }
.end annotation


# static fields
.field private static final case:Lorg/apache/commons/lang3/text/new;

.field private static final do:Lorg/apache/commons/lang3/text/new;

.field private static final else:Lorg/apache/commons/lang3/text/new;

.field private static final for:Lorg/apache/commons/lang3/text/new;

.field private static final goto:Lorg/apache/commons/lang3/text/new;

.field private static final if:Lorg/apache/commons/lang3/text/new;

.field private static final new:Lorg/apache/commons/lang3/text/new;

.field private static final this:Lorg/apache/commons/lang3/text/new;

.field private static final try:Lorg/apache/commons/lang3/text/new;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->do:Lorg/apache/commons/lang3/text/new;

    .line 2
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->if:Lorg/apache/commons/lang3/text/new;

    .line 3
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->for:Lorg/apache/commons/lang3/text/new;

    .line 4
    new-instance v0, Lorg/apache/commons/lang3/text/new$if;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/new$if;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->new:Lorg/apache/commons/lang3/text/new;

    .line 5
    new-instance v0, Lorg/apache/commons/lang3/text/new$try;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/new$try;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->try:Lorg/apache/commons/lang3/text/new;

    .line 6
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->case:Lorg/apache/commons/lang3/text/new;

    .line 7
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->else:Lorg/apache/commons/lang3/text/new;

    .line 8
    new-instance v0, Lorg/apache/commons/lang3/text/new$if;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/new$if;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->goto:Lorg/apache/commons/lang3/text/new;

    .line 9
    new-instance v0, Lorg/apache/commons/lang3/text/new$for;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/new$for;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/new;->this:Lorg/apache/commons/lang3/text/new;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->case:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static catch()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->for:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static class()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->new:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static const(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/commons/lang3/text/new;->this:Lorg/apache/commons/lang3/text/new;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/new$new;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/new$new;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static do(C)Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    return-object v0
.end method

.method public static final()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->if:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static varargs for([C)Lorg/apache/commons/lang3/text/new;
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    const/4 v1, 0x0

    aget-char p0, p0, v1

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/apache/commons/lang3/text/new$if;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/new$if;-><init>([C)V

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/commons/lang3/text/new;->this:Lorg/apache/commons/lang3/text/new;

    return-object p0
.end method

.method public static goto()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->this:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static if(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/commons/lang3/text/new;->this:Lorg/apache/commons/lang3/text/new;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lorg/apache/commons/lang3/text/new$do;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/new$do;-><init>(C)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/commons/lang3/text/new$if;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/new$if;-><init>([C)V

    return-object v0
.end method

.method public static new()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->do:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static super()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->try:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static this()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->goto:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public static try()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/new;->else:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method


# virtual methods
.method public case([CI)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result p1

    return p1
.end method

.method public abstract else([CIII)I
.end method
