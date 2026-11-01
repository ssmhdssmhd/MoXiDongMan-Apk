.class final Lfreemarker/ext/beans/import;
.super Lfreemarker/ext/beans/extends;
.source "SourceFile"


# static fields
.field public static final new:Lfreemarker/ext/beans/import;


# instance fields
.field private final do:Ljava/lang/Object;

.field private final for:[Ljava/lang/Object;

.field private final if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/ext/beans/import;

    const-string v1, "No compatible overloaded variation was found; wrong number of arguments."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/ext/beans/import;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    sput-object v0, Lfreemarker/ext/beans/import;->new:Lfreemarker/ext/beans/import;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/extends;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/import;->do:Ljava/lang/Object;

    .line 3
    iput-boolean p2, p0, Lfreemarker/ext/beans/import;->if:Z

    .line 4
    iput-object p3, p0, Lfreemarker/ext/beans/import;->for:[Ljava/lang/Object;

    return-void
.end method

.method public static case(I)Lfreemarker/ext/beans/import;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/ext/beans/import;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No compatible overloaded variation was found; can\'t convert (unwrap) the "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/support/v4/hl2;

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/support/v4/hl2;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    aput-object v2, v1, p0

    const/4 p0, 0x2

    const-string v2, " argument to the desired Java type."

    aput-object v2, v1, p0

    const/4 p0, 0x0

    invoke-direct {v0, v1, v3, p0}, Lfreemarker/ext/beans/import;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static do([Ljava/lang/Object;)Lfreemarker/ext/beans/import;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/ext/beans/import;

    const-string v1, "Multiple compatible overloaded variations were found with the same priority."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lfreemarker/ext/beans/import;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static else([Ljava/lang/Object;)Lfreemarker/ext/beans/import;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/ext/beans/import;

    const-string v1, "No compatible overloaded variation was found; declared parameter types and argument value types mismatch."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lfreemarker/ext/beans/import;-><init>(Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static if(Lfreemarker/ext/beans/while;[Ljava/lang/Object;)Lfreemarker/ext/beans/extends;
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/ext/beans/while;->do:Lfreemarker/ext/beans/while;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {p1}, Lfreemarker/ext/beans/import;->else([Ljava/lang/Object;)Lfreemarker/ext/beans/import;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lfreemarker/ext/beans/while;->if:Lfreemarker/ext/beans/while;

    if-ne p0, v0, :cond_1

    .line 4
    invoke-static {p1}, Lfreemarker/ext/beans/import;->do([Ljava/lang/Object;)Lfreemarker/ext/beans/import;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized constant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public for()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/import;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public new()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/import;->for:[Ljava/lang/Object;

    return-object v0
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/import;->if:Z

    return v0
.end method
