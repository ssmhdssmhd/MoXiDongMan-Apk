.class public abstract Lorg/chromium/net/impl/if;
.super Lorg/chromium/net/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/if$do;,
        Lorg/chromium/net/impl/if$if;,
        Lorg/chromium/net/impl/if$for;
    }
.end annotation


# static fields
.field private static final import:I = 0x14

.field private static final while:Ljava/util/regex/Pattern;


# instance fields
.field private break:Z

.field private case:Ljava/lang/String;

.field private catch:I

.field private class:J

.field private const:Ljava/lang/String;

.field private final do:Landroid/content/Context;

.field private else:Z

.field public final:J

.field private final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/if$if;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Z

.field private final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/if$for;",
            ">;"
        }
    .end annotation
.end field

.field private new:Z

.field private super:Z

.field private this:Z

.field private throw:I

.field private try:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[0-9\\.]*$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/if;->while:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/catch;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/if;->if:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/if;->for:Ljava/util/List;

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lorg/chromium/net/impl/if;->throw:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/if;->do:Landroid/content/Context;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->extends(Z)Lorg/chromium/net/impl/if;

    .line 7
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->static(Z)Lorg/chromium/net/impl/if;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/if;->return(Z)Lorg/chromium/net/impl/if;

    const-wide/16 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/net/impl/if;->switch(IJ)Lorg/chromium/net/impl/if;

    .line 10
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/if;->throws(Z)Lorg/chromium/net/impl/if;

    .line 11
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->default(Z)Lorg/chromium/net/impl/if;

    return-void
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/chromium/net/impl/if;->while:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Hostname "

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    const/4 v0, 0x2

    .line 3
    :try_start_0
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is illegal. The name of the host does not comply with RFC 1122 and RFC 1123."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is too long. The name of the host does not comply with RFC 1122 and RFC 1123."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is illegal. A hostname should not consist of digits and/or dots only."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/if;->else:Z

    return v0
.end method

.method public abstract()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/if;->else:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/impl/if;->do:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/id2;->for(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/if$for;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/if;->if:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic break(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->finally(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lorg/chromium/net/impl/if;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/if;->const:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic case(IJ)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/impl/if;->switch(IJ)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/if;->do:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/id2;->if(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic class(Ljava/lang/String;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->c(Ljava/lang/String;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic const(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->d(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public continue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/if;->try:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lorg/chromium/net/for$do$if;)Lorg/chromium/net/impl/if;
    .locals 0

    return-object p0
.end method

.method public default(Z)Lorg/chromium/net/impl/if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/if;->new:Z

    return-object p0
.end method

.method public bridge synthetic do(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/net/impl/if;->while(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lorg/chromium/net/impl/if;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-wide p1, p0, Lorg/chromium/net/impl/if;->final:J

    return-object p0
.end method

.method public bridge synthetic else(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->throws(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public extends(Z)Lorg/chromium/net/impl/if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/if;->else:Z

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lorg/chromium/net/impl/if;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/if;->case:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Storage path must be set to existing directory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic final(Ljava/lang/String;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->f(Ljava/lang/String;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public finally(Z)Lorg/chromium/net/impl/if;
    .locals 0

    return-object p0
.end method

.method public g(I)Lorg/chromium/net/impl/if;
    .locals 1

    const/16 v0, 0x13

    if-gt p1, v0, :cond_0

    const/16 v0, -0x14

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lorg/chromium/net/impl/if;->throw:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Thread priority invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic goto(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->default(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lorg/chromium/net/impl/if;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/if;->try:Ljava/lang/String;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/if;->case:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic if(Ljava/lang/String;II)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/impl/if;->import(Ljava/lang/String;II)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public implements()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/if;->super:Z

    return v0
.end method

.method public import(Ljava/lang/String;II)Lorg/chromium/net/impl/if;
    .locals 2

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/if;->if:Ljava/util/List;

    new-instance v1, Lorg/chromium/net/impl/if$for;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/net/impl/if$for;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal QUIC Hint Host: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/if;->new:Z

    return v0
.end method

.method public interface()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/net/impl/if;->catch:I

    return v0
.end method

.method public j(I)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/net/impl/if;->throw:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/if;->this:Z

    return v0
.end method

.method public bridge synthetic new(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->return(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public package()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/if;->const:Ljava/lang/String;

    return-object v0
.end method

.method public private()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/if;->do:Landroid/content/Context;

    return-object v0
.end method

.method public protected()Lorg/chromium/net/impl/VersionSafeCallbacks$if;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/if;->break:Z

    return v0
.end method

.method public return(Z)Lorg/chromium/net/impl/if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/if;->this:Z

    return-object p0
.end method

.method public static(Z)Lorg/chromium/net/impl/if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/if;->goto:Z

    return-object p0
.end method

.method public strictfp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/if;->goto:Z

    return v0
.end method

.method public bridge synthetic super(I)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->g(I)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public switch(IJ)Lorg/chromium/net/impl/if;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/impl/if;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Storage path must not be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/net/impl/if;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 4
    :goto_3
    iput-boolean v4, p0, Lorg/chromium/net/impl/if;->break:Z

    .line 5
    iput-wide p2, p0, Lorg/chromium/net/impl/if;->class:J

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_4

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown cache mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_6
    :goto_4
    iput v3, p0, Lorg/chromium/net/impl/if;->catch:I

    goto :goto_5

    .line 8
    :cond_7
    iput v1, p0, Lorg/chromium/net/impl/if;->catch:I

    goto :goto_5

    .line 9
    :cond_8
    iput v2, p0, Lorg/chromium/net/impl/if;->catch:I

    :goto_5
    return-object p0

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Storage path must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synchronized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/if$if;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/if;->for:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic this(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->extends(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic throw(Ljava/lang/String;)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->h(Ljava/lang/String;)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public throws(Z)Lorg/chromium/net/impl/if;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/if;->super:Z

    return-object p0
.end method

.method public transient()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/if;->final:J

    return-wide v0
.end method

.method public bridge synthetic try(Z)Lorg/chromium/net/catch;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/if;->static(Z)Lorg/chromium/net/impl/if;

    move-result-object p1

    return-object p1
.end method

.method public volatile()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/if;->class:J

    return-wide v0
.end method

.method public while(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/impl/if;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Lorg/chromium/net/impl/if;"
        }
    .end annotation

    const-string v0, "The hostname cannot be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The set of SHA256 pins cannot be null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The pin expiration date cannot be null"

    .line 3
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lorg/chromium/net/impl/if;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    .line 7
    array-length v2, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key pin is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    iget-object p2, p0, Lorg/chromium/net/impl/if;->for:Ljava/util/List;

    new-instance v1, Lorg/chromium/net/impl/if$if;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [[B

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-direct {v1, p1, v0, p3, p4}, Lorg/chromium/net/impl/if$if;-><init>(Ljava/lang/String;[[BZLjava/util/Date;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
