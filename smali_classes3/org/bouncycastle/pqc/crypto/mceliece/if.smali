.class final Lorg/bouncycastle/pqc/crypto/mceliece/if;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/support/v4/xy0;Landroid/support/v4/re0;)[Landroid/support/v4/re0;
    .locals 6

    invoke-virtual {p0}, Landroid/support/v4/xy0;->case()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/xy0;->goto()Landroid/support/v4/fd1;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/xy0;->for()Landroid/support/v4/se0;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/xy0;->new()Landroid/support/v4/pe1;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/xy0;->try()Landroid/support/v4/qe0;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/xy0;->this()[Landroid/support/v4/pe1;

    move-result-object p0

    invoke-virtual {v1}, Landroid/support/v4/fd1;->do()Landroid/support/v4/fd1;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/support/v4/re0;->try(Landroid/support/v4/fd1;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-virtual {v4, p1}, Landroid/support/v4/qe0;->this(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object v4

    check-cast v4, Landroid/support/v4/re0;

    invoke-static {v4, v2, v3, p0}, Landroid/support/v4/uh0;->for(Landroid/support/v4/re0;Landroid/support/v4/se0;Landroid/support/v4/pe1;[Landroid/support/v4/pe1;)Landroid/support/v4/re0;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/support/v4/re0;->do(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-virtual {p1, v1}, Landroid/support/v4/re0;->try(Landroid/support/v4/fd1;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-virtual {p0, v1}, Landroid/support/v4/re0;->try(Landroid/support/v4/fd1;)Landroid/support/v4/he2;

    move-result-object p0

    check-cast p0, Landroid/support/v4/re0;

    invoke-virtual {p1, v0}, Landroid/support/v4/re0;->goto(I)Landroid/support/v4/re0;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v4/re0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method

.method public static if(Landroid/support/v4/zy0;Landroid/support/v4/re0;Landroid/support/v4/re0;)Landroid/support/v4/re0;
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/zy0;->for()Landroid/support/v4/qe0;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/qe0;->finally(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/support/v4/he2;->do(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object p0

    check-cast p0, Landroid/support/v4/re0;

    return-object p0
.end method
