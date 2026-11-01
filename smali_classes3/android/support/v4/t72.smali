.class public Landroid/support/v4/t72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile new:Lorg/apache/commons/lang3/builder/case;


# instance fields
.field private final do:Ljava/lang/StringBuffer;

.field private final for:Lorg/apache/commons/lang3/builder/case;

.field private final if:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/builder/case;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/case;

    sput-object v0, Landroid/support/v4/t72;->new:Lorg/apache/commons/lang3/builder/case;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/t72;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/t72;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 4
    invoke-static {}, Landroid/support/v4/t72;->l()Lorg/apache/commons/lang3/builder/case;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    :cond_1
    iput-object p3, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    .line 7
    iput-object p2, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    .line 8
    iput-object p1, p0, Landroid/support/v4/t72;->if:Ljava/lang/Object;

    .line 9
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang3/builder/case;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static l()Lorg/apache/commons/lang3/builder/case;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/t72;->new:Lorg/apache/commons/lang3/builder/case;

    return-object v0
.end method

.method public static p(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/try;->I(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/try;->J(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/builder/try;->M(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/commons/lang3/builder/case;",
            "Z",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/commons/lang3/builder/try;->M(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/case;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lorg/apache/commons/lang3/builder/case;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Landroid/support/v4/t72;->new:Lorg/apache/commons/lang3/builder/case;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The style must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a([D)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public abstract(Ljava/lang/String;[Ljava/lang/Object;)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public b([F)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public break(Ljava/lang/String;D)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/t72;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([I)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public case(J)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public catch(Ljava/lang/String;F)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public class(Ljava/lang/String;I)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public const(Ljava/lang/String;J)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public continue(Ljava/lang/String;[Ljava/lang/Object;Z)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public d([J)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public default(Ljava/lang/String;[FZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public do(B)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public e([Ljava/lang/Object;)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public else(Ljava/lang/Object;)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public extends(Ljava/lang/String;[I)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public f([S)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public final(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public finally(Ljava/lang/String;[IZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public for(D)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public g([Z)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public goto(Ljava/lang/String;B)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public h(Ljava/lang/Object;)Landroid/support/v4/t72;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/t72;->n()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/goto;->switch(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)Landroid/support/v4/t72;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/case;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public if(C)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public implements(Z)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public import(Ljava/lang/String;[B)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public instanceof([B)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public interface(Ljava/lang/String;[Z)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public j(Ljava/lang/String;)Landroid/support/v4/t72;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/case;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/t72;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public n()Ljava/lang/StringBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public native(Ljava/lang/String;[BZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public new(F)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public o()Lorg/apache/commons/lang3/builder/case;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    return-object v0
.end method

.method public package(Ljava/lang/String;[J)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public private(Ljava/lang/String;[JZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public protected(Ljava/lang/String;[ZZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public public(Ljava/lang/String;[C)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public return(Ljava/lang/String;[CZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public static(Ljava/lang/String;[D)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public strictfp(Ljava/lang/String;[S)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public super(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public switch(Ljava/lang/String;[DZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public synchronized([C)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public this(Ljava/lang/String;C)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public throw(Ljava/lang/String;S)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public throws(Ljava/lang/String;[F)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/t72;->m()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/t72;->n()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/t72;->o()Lorg/apache/commons/lang3/builder/case;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/case;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    invoke-virtual {p0}, Landroid/support/v4/t72;->n()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/t72;->m()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/case;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/t72;->n()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transient(S)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public try(I)Landroid/support/v4/t72;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public volatile(Ljava/lang/String;[SZ)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public while(Ljava/lang/String;Z)Landroid/support/v4/t72;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/t72;->for:Lorg/apache/commons/lang3/builder/case;

    iget-object v1, p0, Landroid/support/v4/t72;->do:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang3/builder/case;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method
