.class public Lnet/minidev/json/for;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x4

.field public static final catch:I = 0x8

.field public static final class:I = 0x10

.field public static final const:Lnet/minidev/json/for;

.field public static final final:Lnet/minidev/json/for;

.field public static final goto:I = 0x1

.field public static final super:Lnet/minidev/json/for;

.field public static final this:I = 0x2


# instance fields
.field private case:Lnet/minidev/json/JStylerObj$MustProtect;

.field private do:Z

.field private else:Lnet/minidev/json/JStylerObj$StringProtector;

.field private for:Z

.field private if:Z

.field private new:Z

.field private try:Lnet/minidev/json/JStylerObj$MustProtect;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/for;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/minidev/json/for;-><init>(I)V

    sput-object v0, Lnet/minidev/json/for;->const:Lnet/minidev/json/for;

    .line 2
    new-instance v0, Lnet/minidev/json/for;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lnet/minidev/json/for;-><init>(I)V

    sput-object v0, Lnet/minidev/json/for;->final:Lnet/minidev/json/for;

    .line 3
    new-instance v0, Lnet/minidev/json/for;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/minidev/json/for;-><init>(I)V

    sput-object v0, Lnet/minidev/json/for;->super:Lnet/minidev/json/for;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lnet/minidev/json/for;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lnet/minidev/json/for;->do:Z

    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_1
    iput-boolean v3, p0, Lnet/minidev/json/for;->for:Z

    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 4
    :goto_2
    iput-boolean v4, p0, Lnet/minidev/json/for;->if:Z

    and-int/lit8 v5, p1, 0x10

    if-lez v5, :cond_3

    const/4 v1, 0x1

    .line 5
    :cond_3
    iput-boolean v1, p0, Lnet/minidev/json/for;->new:Z

    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_4

    .line 6
    sget-object p1, Lnet/minidev/json/JStylerObj;->for:Lnet/minidev/json/JStylerObj$for;

    goto :goto_3

    .line 7
    :cond_4
    sget-object p1, Lnet/minidev/json/JStylerObj;->do:Lnet/minidev/json/JStylerObj$new;

    :goto_3
    if-eqz v3, :cond_5

    .line 8
    sget-object v1, Lnet/minidev/json/JStylerObj;->if:Lnet/minidev/json/JStylerObj$try;

    iput-object v1, p0, Lnet/minidev/json/for;->case:Lnet/minidev/json/JStylerObj$MustProtect;

    goto :goto_4

    .line 9
    :cond_5
    iput-object p1, p0, Lnet/minidev/json/for;->case:Lnet/minidev/json/JStylerObj$MustProtect;

    :goto_4
    if-eqz v0, :cond_6

    .line 10
    sget-object p1, Lnet/minidev/json/JStylerObj;->if:Lnet/minidev/json/JStylerObj$try;

    iput-object p1, p0, Lnet/minidev/json/for;->try:Lnet/minidev/json/JStylerObj$MustProtect;

    goto :goto_5

    .line 11
    :cond_6
    iput-object p1, p0, Lnet/minidev/json/for;->try:Lnet/minidev/json/JStylerObj$MustProtect;

    :goto_5
    if-eqz v4, :cond_7

    .line 12
    sget-object p1, Lnet/minidev/json/JStylerObj;->try:Lnet/minidev/json/JStylerObj$do;

    iput-object p1, p0, Lnet/minidev/json/for;->else:Lnet/minidev/json/JStylerObj$StringProtector;

    goto :goto_6

    .line 13
    :cond_7
    sget-object p1, Lnet/minidev/json/JStylerObj;->new:Lnet/minidev/json/JStylerObj$if;

    iput-object p1, p0, Lnet/minidev/json/for;->else:Lnet/minidev/json/JStylerObj$StringProtector;

    :goto_6
    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/for;->case:Lnet/minidev/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lnet/minidev/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public case(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/for;->else:Lnet/minidev/json/JStylerObj$StringProtector;

    invoke-interface {v0, p1, p2}, Lnet/minidev/json/JStylerObj$StringProtector;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public catch(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public class(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public const(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public do(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/for;->new:Z

    return v0
.end method

.method public final(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public for(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public goto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public if(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/for;->do:Z

    return v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/for;->for:Z

    return v0
.end method

.method public new(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5d

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public public(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lnet/minidev/json/for;->break(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    .line 3
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4
    invoke-static {p2, p1, p0}, Lnet/minidev/json/new;->case(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method public super(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public this(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/for;->try:Lnet/minidev/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lnet/minidev/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public throw(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7d

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public try(Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/minidev/json/for;->if:Z

    return v0
.end method
