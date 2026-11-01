.class public Lfreemarker/core/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/FMParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/j0$if;,
        Lfreemarker/core/j0$for;,
        Lfreemarker/core/j0$new;
    }
.end annotation


# static fields
.field private static a:[I = null

.field private static b:[I = null

.field private static c:[I = null

.field private static d:[I = null

.field private static e:[I = null

.field private static final implements:I = 0x1

.field private static final instanceof:I = 0x2

.field private static final synchronized:I = 0x3

.field private static final transient:I


# instance fields
.field private final abstract:Lfreemarker/core/j0$for;

.field private break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfreemarker/core/j0$new;",
            ">;"
        }
    .end annotation
.end field

.field private case:Landroid/support/v4/e91;

.field private catch:I

.field private class:I

.field private const:Z

.field private continue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private default:I

.field private do:Lfreemarker/template/static;

.field private else:I

.field private final extends:[I

.field private final:Z

.field private final finally:[Lfreemarker/core/j0$if;

.field private for:Z

.field private goto:Z

.field private if:Z

.field public import:Lfreemarker/core/t3;

.field private interface:[I

.field public native:Lfreemarker/core/m4;

.field private new:Z

.field private package:Z

.field private private:I

.field private protected:I

.field public public:Lfreemarker/core/m4;

.field private return:I

.field private static:Lfreemarker/core/m4;

.field private strictfp:[I

.field private super:Ljava/util/LinkedList;

.field private switch:Lfreemarker/core/m4;

.field private this:Lfreemarker/core/ParserConfiguration;

.field private throw:I

.field private throws:I

.field private try:I

.field private volatile:I

.field public while:Lfreemarker/core/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lfreemarker/core/j0;->K2()V

    .line 2
    invoke-static {}, Lfreemarker/core/j0;->L2()V

    .line 3
    invoke-static {}, Lfreemarker/core/j0;->M2()V

    .line 4
    invoke-static {}, Lfreemarker/core/j0;->N2()V

    .line 5
    invoke-static {}, Lfreemarker/core/j0;->O2()V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/k0;)V
    .locals 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    const/16 v0, 0x74

    new-array v1, v0, [I

    .line 90
    iput-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x11

    new-array v1, v1, [Lfreemarker/core/j0$if;

    .line 91
    iput-object v1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lfreemarker/core/j0;->package:Z

    .line 93
    iput v1, p0, Lfreemarker/core/j0;->private:I

    .line 94
    new-instance v2, Lfreemarker/core/j0$for;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/j0$for;-><init>(Lfreemarker/core/j0$do;)V

    iput-object v2, p0, Lfreemarker/core/j0;->abstract:Lfreemarker/core/j0$for;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    const/4 v2, -0x1

    .line 96
    iput v2, p0, Lfreemarker/core/j0;->volatile:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    .line 97
    iput-object v3, p0, Lfreemarker/core/j0;->interface:[I

    .line 98
    iput-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    .line 99
    new-instance p1, Lfreemarker/core/m4;

    invoke-direct {p1}, Lfreemarker/core/m4;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    .line 100
    iput v2, p0, Lfreemarker/core/j0;->return:I

    .line 101
    iput v1, p0, Lfreemarker/core/j0;->default:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 102
    iget-object v3, p0, Lfreemarker/core/j0;->extends:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    :goto_1
    iget-object p1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    array-length v0, p1

    if-ge v1, v0, :cond_1

    new-instance v0, Lfreemarker/core/j0$if;

    invoke-direct {v0}, Lfreemarker/core/j0$if;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V
    .locals 1

    .line 12
    invoke-static {p2, p3}, Lfreemarker/core/j0;->c3(Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)Lfreemarker/core/k0;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;ZLfreemarker/core/k0;Lfreemarker/core/ParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;Ljava/io/Reader;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;Ljava/io/Reader;ZZI)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;Ljava/io/Reader;ZZI)V
    .locals 7

    .line 2
    sget v6, Lfreemarker/template/do;->v3:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;Ljava/io/Reader;ZZII)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;Ljava/io/Reader;ZZII)V
    .locals 8

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 3
    invoke-direct/range {v0 .. v7}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;Ljava/io/Reader;ZZIII)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;Ljava/io/Reader;ZZIII)V
    .locals 14

    move-object v0, p1

    .line 5
    new-instance v13, Lfreemarker/core/q1;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/core/ParserConfiguration;->getAutoEscapingPolicy()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v2

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object v8, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getRecognizeStandardFileExtensions()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object v9, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object v10, v1

    :goto_3
    new-instance v11, Landroid/support/v4/we2;

    move/from16 v2, p7

    invoke-direct {v11, v2}, Landroid/support/v4/we2;-><init>(I)V

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v1

    :cond_4
    move-object v12, v1

    const/16 v5, 0x14

    move-object v1, v13

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v12}, Lfreemarker/core/q1;-><init>(ZZIIILjava/lang/Integer;Landroid/support/v4/e91;Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/support/v4/we2;Lfreemarker/core/else;)V

    move-object v1, p0

    move-object/from16 v2, p2

    .line 11
    invoke-direct {p0, p1, v2, v13}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;ZLfreemarker/core/k0;Lfreemarker/core/ParserConfiguration;)V
    .locals 2

    .line 13
    invoke-direct {p0, p3}, Lfreemarker/core/j0;-><init>(Lfreemarker/core/k0;)V

    .line 14
    invoke-static {p4}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 15
    iput-object p4, p0, Lfreemarker/core/j0;->this:Lfreemarker/core/ParserConfiguration;

    .line 16
    invoke-static {p1}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    .line 18
    instance-of p3, p4, Lfreemarker/core/q1;

    if-eqz p3, :cond_0

    .line 19
    move-object p3, p4

    check-cast p3, Lfreemarker/core/q1;

    .line 20
    invoke-virtual {p1}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v0

    invoke-virtual {p3, v0}, Lfreemarker/core/q1;->do(Lfreemarker/core/else;)V

    .line 21
    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getAutoEscapingPolicy()I

    move-result v0

    invoke-virtual {p3, v0}, Lfreemarker/core/q1;->if(I)V

    .line 22
    invoke-virtual {p1}, Lfreemarker/template/static;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v0

    invoke-virtual {p3, v0}, Lfreemarker/core/q1;->for(Landroid/support/v4/e91;)V

    .line 23
    invoke-virtual {p1}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getRecognizeStandardFileExtensions()Z

    move-result v0

    .line 24
    invoke-virtual {p3, v0}, Lfreemarker/core/q1;->new(Z)V

    .line 25
    invoke-virtual {p1}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v0

    .line 26
    invoke-virtual {p3, v0}, Lfreemarker/core/q1;->try(I)V

    .line 27
    :cond_0
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/we2;->intValue()I

    move-result p3

    .line 28
    iget-object v0, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iput p3, v0, Lfreemarker/core/k0;->while:I

    .line 29
    iput p3, p0, Lfreemarker/core/j0;->try:I

    .line 30
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getRecognizeStandardFileExtensions()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 31
    invoke-direct {p0}, Lfreemarker/core/j0;->l0()Landroid/support/v4/e91;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    .line 32
    iput v0, p0, Lfreemarker/core/j0;->else:I

    .line 33
    iput-object p3, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getAutoEscapingPolicy()I

    move-result p3

    iput p3, p0, Lfreemarker/core/j0;->else:I

    .line 35
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    .line 36
    :goto_1
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    .line 37
    iget-object p3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {p3, p0}, Lfreemarker/core/k0;->Q(Lfreemarker/core/j0;)V

    .line 38
    iget-object p3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getStrictSyntaxMode()Z

    move-result v0

    iput-boolean v0, p3, Lfreemarker/core/k0;->goto:Z

    .line 39
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getTagSyntax()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    if-eq p3, v0, :cond_4

    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 40
    iget-object p3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iput-boolean v0, p3, Lfreemarker/core/k0;->this:Z

    goto :goto_2

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal argument for tagSyntax: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_4
    iget-object p3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lfreemarker/core/k0;->this:Z

    goto :goto_2

    .line 43
    :cond_5
    iget-object p3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iput-boolean v0, p3, Lfreemarker/core/k0;->break:Z

    .line 44
    :goto_2
    iget-object p3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result v0

    iput v0, p3, Lfreemarker/core/k0;->const:I

    .line 45
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getNamingConvention()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal argument for namingConvention: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :pswitch_0
    iget-object v0, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iput p3, v0, Lfreemarker/core/k0;->final:I

    .line 48
    iput p3, v0, Lfreemarker/core/k0;->super:I

    .line 49
    invoke-interface {p4}, Lfreemarker/core/ParserConfiguration;->getWhitespaceStripping()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/core/j0;->if:Z

    if-eqz p2, :cond_6

    .line 50
    iget-boolean p2, p0, Lfreemarker/core/j0;->goto:Z

    invoke-static {p1, p2}, Landroid/support/v4/ul2;->while(Lfreemarker/template/static;Z)V

    .line 51
    iget-object p2, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    invoke-static {p1, p2}, Landroid/support/v4/ul2;->import(Lfreemarker/template/static;Landroid/support/v4/e91;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    const/16 v0, 0x74

    new-array v1, v0, [I

    .line 55
    iput-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x11

    new-array v1, v1, [Lfreemarker/core/j0$if;

    .line 56
    iput-object v1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lfreemarker/core/j0;->package:Z

    .line 58
    iput v1, p0, Lfreemarker/core/j0;->private:I

    .line 59
    new-instance v2, Lfreemarker/core/j0$for;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/j0$for;-><init>(Lfreemarker/core/j0$do;)V

    iput-object v2, p0, Lfreemarker/core/j0;->abstract:Lfreemarker/core/j0$for;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    const/4 v2, -0x1

    .line 61
    iput v2, p0, Lfreemarker/core/j0;->volatile:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    .line 62
    iput-object v3, p0, Lfreemarker/core/j0;->interface:[I

    .line 63
    :try_start_0
    new-instance v3, Lfreemarker/core/t3;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4, v4}, Lfreemarker/core/t3;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v3, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    new-instance p1, Lfreemarker/core/k0;

    iget-object p2, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    invoke-direct {p1, p2}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t3;)V

    iput-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    .line 65
    new-instance p1, Lfreemarker/core/m4;

    invoke-direct {p1}, Lfreemarker/core/m4;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    .line 66
    iput v2, p0, Lfreemarker/core/j0;->return:I

    .line 67
    iput v1, p0, Lfreemarker/core/j0;->default:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 68
    iget-object p2, p0, Lfreemarker/core/j0;->extends:[I

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    :goto_1
    iget-object p1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    new-instance p2, Lfreemarker/core/j0$if;

    invoke-direct {p2}, Lfreemarker/core/j0$if;-><init>()V

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    const/16 v0, 0x74

    new-array v1, v0, [I

    .line 73
    iput-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x11

    new-array v1, v1, [Lfreemarker/core/j0$if;

    .line 74
    iput-object v1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lfreemarker/core/j0;->package:Z

    .line 76
    iput v1, p0, Lfreemarker/core/j0;->private:I

    .line 77
    new-instance v2, Lfreemarker/core/j0$for;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfreemarker/core/j0$for;-><init>(Lfreemarker/core/j0$do;)V

    iput-object v2, p0, Lfreemarker/core/j0;->abstract:Lfreemarker/core/j0$for;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    const/4 v2, -0x1

    .line 79
    iput v2, p0, Lfreemarker/core/j0;->volatile:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    .line 80
    iput-object v3, p0, Lfreemarker/core/j0;->interface:[I

    .line 81
    new-instance v3, Lfreemarker/core/t3;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    .line 82
    new-instance p1, Lfreemarker/core/k0;

    iget-object v3, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    invoke-direct {p1, v3}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t3;)V

    iput-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    .line 83
    new-instance p1, Lfreemarker/core/m4;

    invoke-direct {p1}, Lfreemarker/core/m4;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    .line 84
    iput v2, p0, Lfreemarker/core/j0;->return:I

    .line 85
    iput v1, p0, Lfreemarker/core/j0;->default:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 86
    iget-object v3, p0, Lfreemarker/core/j0;->extends:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    :goto_1
    iget-object p1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    array-length v0, p1

    if-ge v1, v0, :cond_1

    new-instance v0, Lfreemarker/core/j0$if;

    invoke-direct {v0}, Lfreemarker/core/j0$if;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Lfreemarker/core/j0;->f0()Lfreemarker/template/static;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1, p1}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;Ljava/io/Reader;ZZ)V

    return-void
.end method

.method private A0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->C2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private A1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x6b

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x69

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x6a

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 7
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->z1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x7a

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x7d

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x7e

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private B0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->D2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private B1()Z
    .locals 1

    const/16 v0, 0x79

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private B2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x6b

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x69

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x6a

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private C0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->E2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private C1()Z
    .locals 1

    const/16 v0, 0x81

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private C2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x97

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x76

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x96

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x75

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x74

    .line 10
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 12
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x73

    .line 14
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private D0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->F2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private D1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->H1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->I1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->J1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 8
    invoke-direct {p0}, Lfreemarker/core/j0;->K1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 10
    invoke-direct {p0}, Lfreemarker/core/j0;->L1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 12
    invoke-direct {p0}, Lfreemarker/core/j0;->M1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 14
    invoke-direct {p0}, Lfreemarker/core/j0;->N1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 16
    invoke-direct {p0}, Lfreemarker/core/j0;->O1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private D2()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private E0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->G2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private E1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->P1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->Q1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->R1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 8
    invoke-direct {p0}, Lfreemarker/core/j0;->S1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 10
    invoke-direct {p0}, Lfreemarker/core/j0;->T1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 12
    invoke-direct {p0}, Lfreemarker/core/j0;->U1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private E2()Z
    .locals 1

    const/16 v0, 0x7f

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private F0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->H2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private F1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->V1()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private F2()Z
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private G0()Z
    .locals 2

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->p2()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    .line 3
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private G1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x97

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x76

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x96

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x75

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x74

    .line 10
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x73

    .line 12
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->F1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private G2()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private H0()Z
    .locals 2

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    .line 3
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private H1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->W1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private H2()Z
    .locals 1

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private I0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->f2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private I1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->X1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private I2(II)V
    .locals 8

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lfreemarker/core/j0;->protected:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_1

    .line 2
    iget-object p2, p0, Lfreemarker/core/j0;->interface:[I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfreemarker/core/j0;->protected:I

    aput p1, p2, v0

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_7

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lfreemarker/core/j0;->strictfp:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lfreemarker/core/j0;->protected:I

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lfreemarker/core/j0;->strictfp:[I

    iget-object v3, p0, Lfreemarker/core/j0;->interface:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 7
    array-length v4, v2

    iget-object v5, p0, Lfreemarker/core/j0;->strictfp:[I

    array-length v5, v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    .line 8
    :goto_1
    iget-object v5, p0, Lfreemarker/core/j0;->strictfp:[I

    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 9
    aget v6, v2, v4

    aget v7, v5, v4

    if-eq v6, v7, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    .line 10
    iget-object v0, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_7

    .line 11
    iget-object v0, p0, Lfreemarker/core/j0;->interface:[I

    iput p2, p0, Lfreemarker/core/j0;->protected:I

    sub-int/2addr p2, v3

    aput p1, v0, p2

    :cond_7
    :goto_3
    return-void
.end method

.method private J0()Z
    .locals 2

    const/16 v0, 0x81

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->Q0()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private J1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Y1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private J2(I)Lfreemarker/core/m4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iget-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v1}, Lfreemarker/core/k0;->class()Lfreemarker/core/m4;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    iput-object v1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    :goto_0
    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lfreemarker/core/j0;->return:I

    .line 4
    iget-object v1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iget v1, v1, Lfreemarker/core/m4;->kind:I

    if-ne v1, p1, :cond_4

    .line 5
    iget p1, p0, Lfreemarker/core/j0;->default:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/j0;->default:I

    .line 6
    iget p1, p0, Lfreemarker/core/j0;->private:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/j0;->private:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lfreemarker/core/j0;->private:I

    .line 8
    :goto_1
    iget-object v0, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 9
    aget-object v0, v0, p1

    :goto_2
    if-eqz v0, :cond_2

    .line 10
    iget v1, v0, Lfreemarker/core/j0$if;->do:I

    iget v2, p0, Lfreemarker/core/j0;->default:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lfreemarker/core/j0$if;->if:Lfreemarker/core/m4;

    .line 11
    :cond_1
    iget-object v0, v0, Lfreemarker/core/j0$if;->new:Lfreemarker/core/j0$if;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    return-object p1

    .line 13
    :cond_4
    iput-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    .line 14
    iput p1, p0, Lfreemarker/core/j0;->volatile:I

    .line 15
    invoke-virtual {p0}, Lfreemarker/core/j0;->j0()Lfreemarker/core/h3;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private K0()Z
    .locals 1

    const/16 v0, 0x65

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private K1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static K2()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/j0;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x200
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000
        0x2000000
        0x0
        0x0
        0x70000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x600000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8000
        0x0
        0x8000
        0x8000
        0x0
        -0x82c0
        0x0
        0x0
        0x0
        0x0
        -0x82c0
        -0x82c0
        -0x82c0
        -0x82c0
        -0x82c0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private L0()Z
    .locals 1

    const/16 v0, 0x66

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private L1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->a2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static L2()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/j0;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x400000
        0x300
        0x0
        0x0
        0x400000
        0x0
        0x80
        0x0
        0x0
        0x0
        0x0
        0x2000000
        0x4000000
        0x0
        -0x10000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3800
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xc000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x6
        0x0
        0x0
        0x0
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7ffff1
        0x0
        0x0
        0x0
        0x0
        -0x7ffff1
        -0x7ffff1
        -0x7ffff1
        -0x7ffff1
        -0x7ffff1
        0x0
        0x0
        0x6
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private M0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private M1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->m1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static M2()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/j0;->c:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        -0x20000000
        -0x20000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x60000000
        0x0
        -0x20000000
        0x0
        0x0
        0x0
        -0x80000000
        -0x80000000
        0x60000000
        -0x80000000
        0x0
        0x0
        0x0
        -0x20000000
        0x140000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x20000000
        0x0
        0x18
        0x0
        0x0
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x20000000
        0x0
        -0x20000000
        -0x20000000
        0x0
        -0x20000000
        0x0
        0x0
        0x0
        0x0
        0x8000
        0x1
        0x8000
        0x1
        0x1
        0x0
        0x57e
        0x38000
        0x38000
        0x0
        0x0
        0x1f857e
        0x1f857e
        0x1f857e
        0x1f857e
        0x1f857e
        0x1f8000
        0x1f8000
        0x8000
        0x8000
        0x8000
        0x0
        0x3000
        0x0
        0x0
        0x1f8000
        0x38000
        0x1f8000
    .end array-data
.end method

.method private N0()Z
    .locals 3

    const/16 v0, 0x82

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v1, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iput-object v1, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x84

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private N1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->b2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static N2()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/j0;->d:[I

    return-void

    :array_0
    .array-data 4
        0x188
        0x188
        0xf
        0x300000f
        0x0
        0x3000000
        0x3000000
        0x64000000
        0xe00
        0x780000
        0x60
        0x70
        0x70
        0x6
        0x0
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x780001
        0xc780001
        0x0
        0x1
        0x0
        0x0
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1f200
        0x60000
        0x7f200
        0x0
        0x1f200
        0x60000
        0x7f200
        0x0
        0x0
        0x0
        0x7f200
        0x0
        0x0
        0x0
        0x0
        0x0
        0x10000000
        0x200
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x300000f
        0x0
        0x300000f
        0x300000f
        0x0
        0x300000f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private O0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->R0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private O1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->c2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static O2()V
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lfreemarker/core/j0;->e:[I

    return-void

    :array_0
    .array-data 4
        0x20000a2
        0x20000a2
        0x42a0
        0x42a2
        0x2
        0x0
        0x0
        0x0
        0x0
        0xc00000
        0x0
        0x0
        0x0
        0x0
        0x4000
        0x2000002
        0x42a2
        0x4
        0x4000
        0x4080
        0x3800
        0x7800
        0x0
        0x0
        0x14
        0x4
        0x14
        0x42a2
        0x0
        0x8
        0x0
        0x0
        0x0
        0x4
        0x1000
        0x0
        0x4
        0x0
        0x2000
        0x42a2
        0x2000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x0
        0x800
        0x800
        0x0
        0x100800
        0x8
        0x4000
        0x0
        0x80
        0x4000
        0x0
        0x0
        0x4
        0x100
        0x0
        0x1000000
        0x1000000
        0x1000004
        0x1000000
        0x1000000
        0x1004000
        0x8
        0x300000
        0x100
        0x4000
        0x42a6
        0x4
        0x42a2
        0x42a6
        0x4
        0x42a2
        0x0
        0x8
        0x4000
        0x300000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x300000
        0x0
        0x0
        0x0
        0x3c000000    # 0.0078125f
        0x3c000000    # 0.0078125f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000
        0x0
        0x4
        0x4000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private P0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->S0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private P1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->d2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private P2()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iget-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    iput-object v1, p0, Lfreemarker/core/j0;->public:Lfreemarker/core/m4;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v1}, Lfreemarker/core/k0;->class()Lfreemarker/core/m4;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    iget v0, v1, Lfreemarker/core/m4;->kind:I

    iput v0, p0, Lfreemarker/core/j0;->return:I

    return v0

    .line 3
    :cond_0
    iget v0, v1, Lfreemarker/core/m4;->kind:I

    iput v0, p0, Lfreemarker/core/j0;->return:I

    return v0
.end method

.method private Q0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Q1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->e2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Q2()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/core/j0;->package:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x11

    if-ge v1, v2, :cond_2

    .line 2
    :try_start_0
    iget-object v2, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    aget-object v2, v2, v1

    .line 3
    :cond_0
    iget v3, v2, Lfreemarker/core/j0$if;->do:I

    iget v4, p0, Lfreemarker/core/j0;->default:I

    if-le v3, v4, :cond_1

    .line 4
    iget v3, v2, Lfreemarker/core/j0$if;->for:I

    iput v3, p0, Lfreemarker/core/j0;->throws:I

    iget-object v3, v2, Lfreemarker/core/j0$if;->if:Lfreemarker/core/m4;

    iput-object v3, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v3, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0}, Lfreemarker/core/j0;->z2()Z

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-direct {p0}, Lfreemarker/core/j0;->y2()Z

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-direct {p0}, Lfreemarker/core/j0;->x2()Z

    goto :goto_1

    .line 8
    :pswitch_3
    invoke-direct {p0}, Lfreemarker/core/j0;->w2()Z

    goto :goto_1

    .line 9
    :pswitch_4
    invoke-direct {p0}, Lfreemarker/core/j0;->v2()Z

    goto :goto_1

    .line 10
    :pswitch_5
    invoke-direct {p0}, Lfreemarker/core/j0;->u2()Z

    goto :goto_1

    .line 11
    :pswitch_6
    invoke-direct {p0}, Lfreemarker/core/j0;->t2()Z

    goto :goto_1

    .line 12
    :pswitch_7
    invoke-direct {p0}, Lfreemarker/core/j0;->s2()Z

    goto :goto_1

    .line 13
    :pswitch_8
    invoke-direct {p0}, Lfreemarker/core/j0;->H2()Z

    goto :goto_1

    .line 14
    :pswitch_9
    invoke-direct {p0}, Lfreemarker/core/j0;->G2()Z

    goto :goto_1

    .line 15
    :pswitch_a
    invoke-direct {p0}, Lfreemarker/core/j0;->F2()Z

    goto :goto_1

    .line 16
    :pswitch_b
    invoke-direct {p0}, Lfreemarker/core/j0;->E2()Z

    goto :goto_1

    .line 17
    :pswitch_c
    invoke-direct {p0}, Lfreemarker/core/j0;->D2()Z

    goto :goto_1

    .line 18
    :pswitch_d
    invoke-direct {p0}, Lfreemarker/core/j0;->C2()Z

    goto :goto_1

    .line 19
    :pswitch_e
    invoke-direct {p0}, Lfreemarker/core/j0;->B2()Z

    goto :goto_1

    .line 20
    :pswitch_f
    invoke-direct {p0}, Lfreemarker/core/j0;->A2()Z

    goto :goto_1

    .line 21
    :pswitch_10
    invoke-direct {p0}, Lfreemarker/core/j0;->r2()Z

    .line 22
    :cond_1
    :goto_1
    iget-object v2, v2, Lfreemarker/core/j0$if;->new:Lfreemarker/core/j0$if;
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_2
    iput-boolean v0, p0, Lfreemarker/core/j0;->package:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private R0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x82

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private R1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->f2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private R2(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    aget-object p1, v0, p1

    .line 2
    :goto_0
    iget v0, p1, Lfreemarker/core/j0$if;->do:I

    iget v1, p0, Lfreemarker/core/j0;->default:I

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p1, Lfreemarker/core/j0$if;->new:Lfreemarker/core/j0$if;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/core/j0$if;

    invoke-direct {v0}, Lfreemarker/core/j0$if;-><init>()V

    iput-object v0, p1, Lfreemarker/core/j0$if;->new:Lfreemarker/core/j0$if;

    move-object p1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget v0, p0, Lfreemarker/core/j0;->default:I

    add-int/2addr v0, p2

    iget v1, p0, Lfreemarker/core/j0;->throws:I

    sub-int/2addr v0, v1

    iput v0, p1, Lfreemarker/core/j0$if;->do:I

    .line 5
    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p1, Lfreemarker/core/j0$if;->if:Lfreemarker/core/m4;

    .line 6
    iput p2, p1, Lfreemarker/core/j0$if;->for:I

    return-void
.end method

.method private S0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->T0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->U0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private S1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->g2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private S2(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iget-object v1, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->throws:I

    sub-int/2addr v1, v2

    iput v1, p0, Lfreemarker/core/j0;->throws:I

    .line 3
    iget-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v1}, Lfreemarker/core/k0;->class()Lfreemarker/core/m4;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    iput-object v1, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v1, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v1, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 7
    :goto_0
    iget-boolean v0, p0, Lfreemarker/core/j0;->package:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 9
    iget-object v4, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    if-eq v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, p1, v3}, Lfreemarker/core/j0;->I2(II)V

    .line 11
    :cond_3
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iget v3, v0, Lfreemarker/core/m4;->kind:I

    if-eq v3, p1, :cond_4

    return v2

    .line 12
    :cond_4
    iget p1, p0, Lfreemarker/core/j0;->throws:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    if-eq v0, p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lfreemarker/core/j0;->abstract:Lfreemarker/core/j0$for;

    throw p1

    :cond_6
    :goto_2
    return v1
.end method

.method private T0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->V0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->W0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private T1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->h2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private T2(Lfreemarker/core/h0;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/core/while;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0
.end method

.method private U0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x82

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->T0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private U1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->i2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private U2(Lfreemarker/core/h0;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/core/r0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found hash literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0
.end method

.method private V0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Z0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x77

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lfreemarker/core/j0;->c1()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private V1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->j2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->k2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private V2(Lfreemarker/core/h0;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/core/t1;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found list literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0
.end method

.method private W0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private W1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x61

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x62

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private W2(Lfreemarker/core/h0;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/core/z2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found number literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0
.end method

.method private X0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private X1()Z
    .locals 3

    const/16 v0, 0x89

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->l2()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_1
    const/16 v0, 0x8a

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private X2(Lfreemarker/core/h0;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/core/x3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found string literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Expecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0
.end method

.method private Y0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Y1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x5d

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->m2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Y2(Lfreemarker/core/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const-string v0, "number"

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->X2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->T2(Lfreemarker/core/h0;Ljava/lang/String;)V

    return-void
.end method

.method private Z0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->d1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->e1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Z1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->n2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->o2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Z2()Lfreemarker/core/j0$new;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/j0$new;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private a0(Lfreemarker/core/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const-string v0, "boolean (true/false)"

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->X2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->W2(Lfreemarker/core/h0;Ljava/lang/String;)V

    return-void
.end method

.method private a1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->g1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private a2()Z
    .locals 2

    const/16 v0, 0x85

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->p2()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x86

    .line 3
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private a3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private b1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->h1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->a1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private b2()Z
    .locals 2

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    .line 3
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private b3()Lfreemarker/core/j0$new;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/core/j0$new;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/core/j0$new;-><init>(Lfreemarker/core/j0$do;)V

    .line 4
    iget-object v1, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private c0(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/m4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    const-string v1, "The left hand operand of ?"

    if-ltz v0, :cond_4

    .line 2
    iget-object v2, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/j0$new;

    .line 3
    invoke-static {v2}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lfreemarker/core/j0$new;->for(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4
    :cond_2
    :goto_2
    invoke-static {v2}, Lfreemarker/core/j0$new;->try(Lfreemarker/core/j0$new;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    return-void

    .line 5
    :cond_3
    new-instance v0, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " can\'t be the loop variable of an user defined directive: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0

    .line 6
    :cond_4
    new-instance v0, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a loop variable, but there\'s no loop variable in scope with this name: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private c1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->k1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private c2()Z
    .locals 2

    const/16 v0, 0x63

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8e

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static c3(Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)Lfreemarker/core/k0;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/core/t3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;II)V

    .line 2
    invoke-interface {p1}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result p0

    invoke-virtual {v0, p0}, Lfreemarker/core/t3;->package(I)V

    .line 3
    new-instance p0, Lfreemarker/core/k0;

    invoke-direct {p0, v0}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t3;)V

    return-object p0
.end method

.method public static d0(Ljava/lang/String;)Lfreemarker/core/j0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/t3;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, p0}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;III)V

    .line 2
    new-instance p0, Lfreemarker/core/k0;

    invoke-direct {p0, v0}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t3;)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lfreemarker/core/k0;->try(I)V

    .line 4
    new-instance v0, Lfreemarker/core/j0;

    invoke-direct {v0, p0}, Lfreemarker/core/j0;-><init>(Lfreemarker/core/k0;)V

    .line 5
    invoke-virtual {p0, v0}, Lfreemarker/core/k0;->Q(Lfreemarker/core/j0;)V

    return-object v0
.end method

.method private d1()Z
    .locals 3

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->l1()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_1
    const/16 v0, 0x88

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private d2()Z
    .locals 3

    const/16 v0, 0x63

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v2, 0x8e

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->S2(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v2, 0x7a

    .line 5
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->S2(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v2, 0x7b

    .line 7
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->S2(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 9
    invoke-direct {p0}, Lfreemarker/core/j0;->q2()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private d3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of v1, v0, Lfreemarker/core/y1;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->else:I

    const/16 v3, 0x15

    if-ne v1, v3, :cond_0

    .line 3
    check-cast v0, Lfreemarker/core/y1;

    invoke-virtual {v0}, Lfreemarker/core/y1;->catch()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/core/j0;->goto:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lfreemarker/core/j0;->goto:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    if-ne v1, v0, :cond_2

    .line 5
    iput-boolean v2, p0, Lfreemarker/core/j0;->goto:Z

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled autoEscaping ENUM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lfreemarker/core/j0;->else:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    iput-boolean v2, p0, Lfreemarker/core/j0;->goto:Z

    :goto_0
    return-void
.end method

.method private e1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->m1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e2()Z
    .locals 2

    const/16 v0, 0x85

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x86

    .line 3
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static f0()Lfreemarker/template/static;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/template/static;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/StringReader;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lfreemarker/template/do;->f1()Lfreemarker/template/do;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create dummy template"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->n1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->o1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->p1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f2()Z
    .locals 2

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->p2()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x88

    .line 3
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private g1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->q1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->r1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->s1()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 7
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->f1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private g2()Z
    .locals 2

    const/16 v0, 0x67

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8e

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->G0()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 5
    :cond_2
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->H0()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 7
    :cond_3
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 8
    invoke-direct {p0}, Lfreemarker/core/j0;->I0()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private g3(Lfreemarker/core/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const-string v0, "string"

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->W2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j0;->T2(Lfreemarker/core/h0;Ljava/lang/String;)V

    return-void
.end method

.method private h0(Lfreemarker/core/h0;)Lfreemarker/core/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/e0;

    invoke-virtual {v0, p1}, Lfreemarker/core/e0;->r(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private h1()Z
    .locals 1

    const/16 v0, 0x78

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x99

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget v0, v0, Lfreemarker/core/k0;->super:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const-string v0, "#forEach"

    goto :goto_0

    :cond_0
    const-string v0, "#foreach"

    :goto_0
    return-object v0
.end method

.method private i1()Z
    .locals 1

    const/16 v0, 0x79

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i2()Z
    .locals 1

    const/16 v0, 0x68

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private j1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->t1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->u1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private j2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->K0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->X0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private k0(Lfreemarker/core/h0;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    move-object v1, v0

    check-cast v1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1
    :try_end_1
    .catch Landroid/support/v4/k52; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    nop

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    instance-of p2, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_1

    .line 5
    :try_start_2
    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lfreemarker/template/utility/super;->package(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p1

    :catch_1
    move-exception p2

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nExpecting boolean (true/false), found: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0

    .line 8
    :cond_1
    new-instance p2, Lfreemarker/core/h3;

    const-string v0, "Expecting boolean (true/false) parameter"

    invoke-direct {p2, v0, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw p2

    :catch_2
    move-exception p2

    .line 9
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nCould not evaluate expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private k1()Z
    .locals 2

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->j1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private k2()Z
    .locals 2

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->M0()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private l0()Landroid/support/v4/e91;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0}, Lfreemarker/template/static;->q1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v3, v2, -0x5

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v3, v2, -0x4

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_3

    const/16 v4, 0x46

    if-eq v3, v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v3, v2, -0x3

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-eq v3, v4, :cond_4

    const/16 v4, 0x54

    if-eq v3, v4, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v3, v2, -0x2

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_5

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x68

    if-eq v0, v2, :cond_9

    const/16 v2, 0x48

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v2, 0x78

    if-eq v0, v2, :cond_8

    const/16 v2, 0x58

    if-ne v0, v2, :cond_7

    goto :goto_0

    :cond_7
    return-object v1

    .line 8
    :cond_8
    :goto_0
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v0

    sget-object v1, Lfreemarker/core/v4;->do:Lfreemarker/core/v4;

    invoke-virtual {v1}, Lfreemarker/core/v4;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/template/do;->D1(Ljava/lang/String;)Landroid/support/v4/e91;

    move-result-object v0

    return-object v0

    .line 9
    :cond_9
    :goto_1
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v0

    sget-object v1, Lfreemarker/core/q0;->do:Lfreemarker/core/q0;

    invoke-virtual {v1}, Lfreemarker/core/q0;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/template/do;->D1(Ljava/lang/String;)Landroid/support/v4/e91;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/jc2; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Landroid/support/v4/mc;

    const-string v2, "Unregistered std format"

    invoke-direct {v1, v2, v0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private l1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->m1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->v1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private l2()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v2, 0x82

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->S2(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x84

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lfreemarker/core/j0;->Y0()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 8
    invoke-direct {p0}, Lfreemarker/core/j0;->N0()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private m1()Z
    .locals 1

    const/16 v0, 0x8e

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private m2()Z
    .locals 1

    const/16 v0, 0x5e

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private n1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private n2()Z
    .locals 1

    const/16 v0, 0x5f

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private o1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->x1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private o2()Z
    .locals 1

    const/16 v0, 0x60

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->r2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private p1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->y1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->O0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0x9

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->s2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private q1()Z
    .locals 1

    const/16 v0, 0x7a

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x73

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x74

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x75

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x76

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x5f

    .line 10
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x60

    .line 12
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x8b

    .line 14
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x8c

    .line 16
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x8d

    .line 18
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->t2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private r1()Z
    .locals 1

    const/16 v0, 0x7d

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x78

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x79

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0xb

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->u2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private s1()Z
    .locals 1

    const/16 v0, 0x7e

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s2()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->Z0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x77

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private t0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->v2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private t1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->z1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->A1()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private t2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x82

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x8e

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x5d

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 7
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x69

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x6c

    .line 10
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x6d

    .line 12
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x6e

    .line 14
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x6f

    .line 16
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x70

    .line 18
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x71

    .line 20
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x72

    .line 22
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private u0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0xd

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->w2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private u1()Z
    .locals 2

    const/16 v0, 0x7f

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->t1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private u2()Z
    .locals 2

    const/16 v0, 0x8e

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x69

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private v0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0xe

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->x2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private v1()Z
    .locals 2

    const/16 v0, 0x82

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->m1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private v2()Z
    .locals 1

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private w0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->y2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private w1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x78

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->B1()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/j0;->y1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private w2()Z
    .locals 2

    const/16 v0, 0x8e

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x69

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private x0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->z2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private x1()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->C1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->C1()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->y1()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private x2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x52

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x54

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private y0(I)Z
    .locals 2

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->A2()Z

    move-result v1
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v0

    .line 3
    invoke-direct {p0, v0, p1}, Lfreemarker/core/j0;->R2(II)V

    return v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v1

    :catch_0
    invoke-direct {p0, v0, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private y1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->D1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->E1()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/4 v0, 0x0

    return v0
.end method

.method private y2()Z
    .locals 1

    const/16 v0, 0x53

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private z0(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lfreemarker/core/j0;->throws:I

    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    iput-object v0, p0, Lfreemarker/core/j0;->switch:Lfreemarker/core/m4;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 2
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/j0;->B2()Z

    move-result v2
    :try_end_0
    .catch Lfreemarker/core/j0$for; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 3
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lfreemarker/core/j0;->R2(II)V

    return v0
.end method

.method private z1()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lfreemarker/core/j0;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    invoke-direct {p0}, Lfreemarker/core/j0;->G1()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private z2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x4f

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v1, 0x4d

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->S2(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iput-object v0, p0, Lfreemarker/core/j0;->static:Lfreemarker/core/m4;

    const/16 v0, 0x4c

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->S2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/core/j0;->B(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public B(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lfreemarker/core/t3;->catch(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget-object p2, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    invoke-virtual {p1, p2}, Lfreemarker/core/k0;->do(Lfreemarker/core/t3;)V

    .line 3
    new-instance p1, Lfreemarker/core/m4;

    invoke-direct {p1}, Lfreemarker/core/m4;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lfreemarker/core/j0;->return:I

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lfreemarker/core/j0;->default:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x74

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    :goto_1
    iget-object p1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    array-length v0, p1

    if-ge p2, v0, :cond_1

    new-instance v0, Lfreemarker/core/j0$if;

    invoke-direct {v0}, Lfreemarker/core/j0$if;-><init>()V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public C(Ljava/io/Reader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/core/t3;

    invoke-direct {v0, p1, v1, v1}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, v1, v1}, Lfreemarker/core/t3;->final(Ljava/io/Reader;II)V

    .line 4
    :goto_0
    iget-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lfreemarker/core/k0;

    iget-object v0, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    invoke-direct {p1, v0}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t3;)V

    iput-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    .line 6
    :cond_1
    iget-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget-object v0, p0, Lfreemarker/core/j0;->import:Lfreemarker/core/t3;

    invoke-virtual {p1, v0}, Lfreemarker/core/k0;->do(Lfreemarker/core/t3;)V

    .line 7
    new-instance p1, Lfreemarker/core/m4;

    invoke-direct {p1}, Lfreemarker/core/m4;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lfreemarker/core/j0;->return:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lfreemarker/core/j0;->default:I

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x74

    if-ge v1, v2, :cond_2

    .line 10
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    :goto_2
    iget-object p1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    array-length v1, p1

    if-ge v0, v1, :cond_3

    new-instance v1, Lfreemarker/core/j0$if;

    invoke-direct {v1}, Lfreemarker/core/j0$if;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final D()Lfreemarker/core/m3;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v1

    .line 3
    new-instance v2, Lfreemarker/core/m3;

    invoke-direct {v2, v1}, Lfreemarker/core/m3;-><init>(Lfreemarker/core/c4;)V

    .line 4
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v3, v0, v0, v1}, Lfreemarker/core/h4;->import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V

    return-object v2
.end method

.method public final E()Lfreemarker/core/n3;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x43

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/16 v2, 0x44

    if-ne v0, v2, :cond_5

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 3
    iget v2, p0, Lfreemarker/core/j0;->return:I

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_1
    const/16 v4, 0x78

    if-eq v2, v4, :cond_2

    const/16 v4, 0x79

    if-eq v2, v4, :cond_2

    const/16 v4, 0x81

    if-eq v2, v4, :cond_2

    const/16 v4, 0x85

    if-eq v2, v4, :cond_2

    const/16 v4, 0x87

    if-eq v2, v4, :cond_2

    const/16 v4, 0x89

    if-eq v2, v4, :cond_2

    const/16 v4, 0x8e

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    .line 4
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x27

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v2, v4

    move-object v2, v3

    goto :goto_0

    .line 5
    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    .line 6
    :goto_0
    iget v4, p0, Lfreemarker/core/j0;->return:I

    if-ne v4, v1, :cond_3

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_3
    const/16 v1, 0x8d

    if-eq v4, v1, :cond_4

    .line 7
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x28

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v1, v4

    goto :goto_1

    .line 8
    :cond_4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 9
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v3

    .line 10
    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_2

    .line 11
    :cond_5
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x29

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 12
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 13
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 14
    :cond_6
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    move-object v1, v3

    move-object v2, v1

    :goto_2
    if-nez v3, :cond_7

    move-object v3, v0

    .line 15
    :cond_7
    new-instance v4, Lfreemarker/core/n3;

    invoke-direct {v4, v2, v1}, Lfreemarker/core/n3;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    .line 16
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final F()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->y()Lfreemarker/core/h0;

    move-result-object v0

    const v1, 0x7fffffff

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->A0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v3, 0x96

    if-eq v1, v3, :cond_2

    const/16 v3, 0x97

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x9

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 5
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    :pswitch_0
    const/16 v1, 0x76

    .line 7
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x75

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x74

    .line 9
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x73

    .line 10
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 13
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->y()Lfreemarker/core/h0;

    move-result-object v2

    const-string v3, "number"

    .line 14
    invoke-direct {p0, v0, v3}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v2, v3}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, v0, v3}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v2, v3}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v0, v3}, Lfreemarker/core/j0;->X2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, v2, v3}, Lfreemarker/core/j0;->X2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 20
    new-instance v3, Lfreemarker/core/q;

    iget-object v1, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/q;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    move-object v0, v3

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G()Lfreemarker/core/p3;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x1a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x39

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x2a

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v2

    .line 9
    :goto_0
    iget-boolean v3, p0, Lfreemarker/core/j0;->const:Z

    if-eqz v3, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "A macro cannot return a value"

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 11
    :cond_4
    iget-boolean v3, p0, Lfreemarker/core/j0;->final:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "A function must return a value"

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    :cond_6
    if-eqz v1, :cond_7

    .line 13
    :goto_1
    new-instance v3, Lfreemarker/core/p3;

    invoke-direct {v3, v1}, Lfreemarker/core/p3;-><init>(Lfreemarker/core/h0;)V

    .line 14
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3

    .line 15
    :cond_7
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "A return instruction can only occur inside a macro or function"

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final H()Lfreemarker/core/b4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->x0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->abstract()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    invoke-virtual {v0}, Lfreemarker/core/c4;->if()Lfreemarker/core/b4;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lfreemarker/core/b4;->q()V

    .line 7
    iget-boolean v1, p0, Lfreemarker/core/j0;->new:Z

    if-nez v1, :cond_1

    .line 8
    iget-boolean v1, p0, Lfreemarker/core/j0;->if:Z

    invoke-virtual {v0, v1}, Lfreemarker/core/b4;->k(Z)Lfreemarker/core/b4;

    move-result-object v0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lfreemarker/core/b4;->q()V

    return-object v0
.end method

.method public final I()Lfreemarker/core/r3;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/j0;->Z2()Lfreemarker/core/j0$new;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v1

    .line 4
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    .line 5
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v3, 0x25

    iget v4, p0, Lfreemarker/core/j0;->default:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 7
    :goto_0
    new-instance v3, Lfreemarker/core/r3;

    invoke-direct {v3, v1}, Lfreemarker/core/r3;-><init>(Lfreemarker/core/c4;)V

    if-eqz v2, :cond_2

    .line 8
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v2, v0, v0, v1}, Lfreemarker/core/h4;->import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V

    :goto_1
    return-object v3

    .line 10
    :cond_3
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#sep must be inside a #list (or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Lfreemarker/core/j0;->i0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") block."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final J()Lfreemarker/core/i3;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x1c

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/16 v1, 0x8e

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    const/16 v2, 0x69

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v4, v1}, Lfreemarker/core/k0;->else(Lfreemarker/core/m4;)V

    .line 7
    new-instance v4, Lfreemarker/core/i3;

    iget-object v5, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget-object v6, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v6}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v6

    invoke-direct {v4, v1, v5, v2, v6}, Lfreemarker/core/i3;-><init>(Lfreemarker/core/m4;Lfreemarker/core/k0;Lfreemarker/core/h0;Lfreemarker/template/do;)V

    .line 8
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v4
.end method

.method public final K()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 3
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v3, 0x71

    iget v4, p0, Lfreemarker/core/j0;->default:I

    aput v4, v2, v3

    goto/16 :goto_3

    .line 4
    :pswitch_0
    iget v2, p0, Lfreemarker/core/j0;->return:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_2
    packed-switch v2, :pswitch_data_1

    .line 5
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x73

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 6
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 7
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    :pswitch_1
    const v2, 0x7fffffff

    .line 8
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->v0(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p0}, Lfreemarker/core/j0;->N()Lfreemarker/core/z;

    move-result-object v2

    goto :goto_1

    .line 10
    :cond_3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->w0(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {p0}, Lfreemarker/core/j0;->o()Lfreemarker/core/a3;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_5
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 16
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 17
    :pswitch_2
    iget v2, p0, Lfreemarker/core/j0;->return:I

    if-ne v2, v3, :cond_6

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_6
    packed-switch v2, :pswitch_data_2

    .line 18
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x72

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 19
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 20
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    :pswitch_3
    const/16 v2, 0x51

    .line 21
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    goto :goto_2

    :pswitch_4
    const/16 v2, 0x50

    .line 22
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    goto :goto_2

    :pswitch_5
    const/16 v2, 0x4f

    .line 23
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 24
    :goto_2
    iget-object v3, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_7

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27
    :cond_7
    iget-object v2, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :goto_3
    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final L()Lfreemarker/core/w3;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x19

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x2b

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    .line 9
    :goto_0
    new-instance v2, Lfreemarker/core/w3;

    invoke-direct {v2, v1}, Lfreemarker/core/w3;-><init>(Lfreemarker/core/h0;)V

    .line 10
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v1, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v2
.end method

.method public final M(Z)Lfreemarker/core/x3;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x16

    const/16 v3, 0x5d

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_1

    .line 2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/j0;->extends:[I

    iget v0, p0, Lfreemarker/core/j0;->default:I

    aput v0, p1, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance p1, Lfreemarker/core/h3;

    invoke-direct {p1}, Lfreemarker/core/h3;-><init>()V

    throw p1

    .line 6
    :cond_2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 7
    iget-object v5, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 8
    :cond_3
    :try_start_0
    iget-object v5, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfreemarker/template/utility/super;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lfreemarker/core/h3; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_1
    new-instance v5, Lfreemarker/core/x3;

    invoke-direct {v5, v4}, Lfreemarker/core/x3;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v5, v4, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    if-eqz p1, :cond_8

    if-nez v3, :cond_8

    .line 11
    iget-object p1, p0, Lfreemarker/core/j0;->this:Lfreemarker/core/ParserConfiguration;

    invoke-interface {p1}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result p1

    const/16 v3, 0x14

    if-eq p1, v3, :cond_4

    const/16 v4, 0x15

    if-ne p1, v4, :cond_5

    .line 12
    :cond_4
    iget-object v4, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const-string v6, "${"

    .line 13
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_7

    :cond_5
    if-ne p1, v3, :cond_6

    iget-object v3, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const-string v4, "#{"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_7

    :cond_6
    if-ne p1, v2, :cond_8

    iget-object p1, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const-string v0, "[="

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_8

    .line 16
    :cond_7
    iget-object p1, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    invoke-virtual {v5, p0, p1}, Lfreemarker/core/x3;->f(Lfreemarker/core/j0;Landroid/support/v4/e91;)V

    :cond_8
    return-object v5

    :catch_0
    move-exception p1

    .line 17
    iget v1, v0, Lfreemarker/core/m4;->beginLine:I

    iput v1, p1, Lfreemarker/core/h3;->lineNumber:I

    .line 18
    iget v1, v0, Lfreemarker/core/m4;->beginColumn:I

    iput v1, p1, Lfreemarker/core/h3;->columnNumber:I

    .line 19
    iget v1, v0, Lfreemarker/core/m4;->endLine:I

    iput v1, p1, Lfreemarker/core/h3;->endLineNumber:I

    .line 20
    iget v0, v0, Lfreemarker/core/m4;->endColumn:I

    iput v0, p1, Lfreemarker/core/h3;->endColumnNumber:I

    .line 21
    throw p1
.end method

.method public final N()Lfreemarker/core/z;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x52

    if-eq v0, v2, :cond_2

    const/16 v2, 0x54

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    const/16 v2, 0x86

    .line 4
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x1c

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 7
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 8
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    const/16 v2, 0x8a

    .line 10
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    :goto_0
    const-string v3, "string or something automatically convertible to string (number, date or boolean)"

    .line 11
    invoke-direct {p0, v1, v3}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v1, v3}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 13
    new-instance v3, Lfreemarker/core/z;

    .line 14
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->h0(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object v4

    iget-object v5, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    iget-boolean v6, p0, Lfreemarker/core/j0;->goto:Z

    invoke-direct {v3, v1, v4, v5, v6}, Lfreemarker/core/z;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;Landroid/support/v4/e91;Z)V

    .line 15
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final O()Lfreemarker/core/y3;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    const/16 v2, 0x94

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/16 v4, 0x21

    const/16 v5, 0x4f

    if-eq v2, v4, :cond_1

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    if-eq v2, v5, :cond_1

    .line 5
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x58

    iget v6, p0, Lfreemarker/core/j0;->default:I

    aput v6, v2, v4

    const/4 v2, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->W()Lfreemarker/core/c2;

    move-result-object v2

    .line 7
    :goto_0
    iget v4, p0, Lfreemarker/core/j0;->catch:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, p0, Lfreemarker/core/j0;->catch:I

    .line 8
    new-instance v4, Lfreemarker/core/y3;

    invoke-direct {v4, v1, v2}, Lfreemarker/core/y3;-><init>(Lfreemarker/core/h0;Lfreemarker/core/c2;)V

    .line 9
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_2
    const/16 v2, 0x40

    const/16 v7, 0xf

    if-eq v1, v7, :cond_3

    if-eq v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x5b

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/j0;->class()Lfreemarker/core/l;

    move-result-object v8

    .line 12
    iget-object v9, v8, Lfreemarker/core/l;->class:Lfreemarker/core/h0;

    if-nez v9, :cond_6

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "You can only have one default case in a switch statement"

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 14
    :cond_6
    :goto_1
    invoke-virtual {v4, v8}, Lfreemarker/core/y3;->r(Lfreemarker/core/l;)V

    .line 15
    iget v8, p0, Lfreemarker/core/j0;->return:I

    if-ne v8, v3, :cond_7

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_7
    if-eq v8, v7, :cond_4

    if-eq v8, v2, :cond_4

    .line 16
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x59

    iget v7, p0, Lfreemarker/core/j0;->default:I

    aput v7, v1, v2

    .line 17
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v3, :cond_8

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_8
    if-eq v1, v5, :cond_9

    .line 18
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x5a

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    goto :goto_2

    .line 19
    :cond_9
    invoke-direct {p0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_2
    const/16 v1, 0x35

    .line 20
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 21
    iget v2, p0, Lfreemarker/core/j0;->catch:I

    sub-int/2addr v2, v6

    iput v2, p0, Lfreemarker/core/j0;->catch:I

    .line 22
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v2, v0, v1}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v4
.end method

.method public final P()Lfreemarker/core/n4;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x17

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    .line 3
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/16 v4, 0x83

    if-eq v2, v4, :cond_1

    .line 4
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x55

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v2, v4

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_0
    const/4 v2, 0x0

    move-object v4, v2

    .line 6
    :goto_1
    iget v5, p0, Lfreemarker/core/j0;->return:I

    if-ne v5, v3, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v5

    :cond_2
    const/16 v6, 0x8e

    if-eq v5, v6, :cond_6

    .line 7
    iget-object v5, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v6, 0x56

    iget v7, p0, Lfreemarker/core/j0;->default:I

    aput v7, v5, v6

    .line 8
    iget v5, p0, Lfreemarker/core/j0;->return:I

    if-ne v5, v3, :cond_3

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v5

    :cond_3
    const/16 v6, 0x94

    if-eq v5, v6, :cond_5

    const/16 v6, 0x95

    if-ne v5, v6, :cond_4

    .line 9
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    goto :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x57

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 11
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 12
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 13
    :cond_5
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 14
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v2

    const/16 v3, 0x34

    .line 15
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 16
    :goto_2
    new-instance v5, Lfreemarker/core/n4;

    invoke-direct {v5, v1, v4, v2}, Lfreemarker/core/n4;-><init>(Lfreemarker/core/h0;Ljava/util/Map;Lfreemarker/core/c4;)V

    .line 17
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v5, v1, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v5

    .line 18
    :cond_6
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v5

    const/16 v6, 0x69

    .line 19
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 20
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v6

    if-nez v4, :cond_7

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 22
    :cond_7
    iget-object v5, v5, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final Q()Lfreemarker/core/b4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x2d

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x3f

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 6
    new-instance v1, Lfreemarker/core/o4;

    invoke-direct {v1, v2, v2}, Lfreemarker/core/o4;-><init>(ZZ)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x3e

    .line 7
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 8
    new-instance v1, Lfreemarker/core/o4;

    invoke-direct {v1, v2, v3}, Lfreemarker/core/o4;-><init>(ZZ)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3d

    .line 9
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 10
    new-instance v1, Lfreemarker/core/o4;

    invoke-direct {v1, v3, v2}, Lfreemarker/core/o4;-><init>(ZZ)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x3c

    .line 11
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 12
    new-instance v1, Lfreemarker/core/o4;

    invoke-direct {v1, v3, v3}, Lfreemarker/core/o4;-><init>(ZZ)V

    .line 13
    :goto_0
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x78

    if-eq v0, v2, :cond_3

    const/16 v2, 0x79

    if-eq v0, v2, :cond_3

    const/16 v2, 0x81

    if-eq v0, v2, :cond_2

    const/16 v2, 0x85

    if-eq v0, v2, :cond_1

    const/16 v2, 0x87

    if-eq v0, v2, :cond_1

    const/16 v2, 0x89

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8e

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v2, 0x3

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 5
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->x()Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->m()Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->S()Lfreemarker/core/h0;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final S()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x78

    if-eq v0, v2, :cond_2

    const/16 v2, 0x79

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v2, 0x5

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->x()Lfreemarker/core/h0;

    move-result-object v2

    .line 8
    new-instance v3, Lfreemarker/core/q4;

    invoke-direct {v3, v2, v1}, Lfreemarker/core/q4;-><init>(Lfreemarker/core/h0;Z)V

    .line 9
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->throw(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/h4;)V

    return-object v3
.end method

.method public final T()Lfreemarker/core/b4;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x4a

    .line 1
    invoke-direct {v0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v3

    .line 3
    instance-of v4, v3, Lfreemarker/core/w0;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    instance-of v4, v3, Lfreemarker/core/a0;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lfreemarker/core/a0;

    invoke-virtual {v4}, Lfreemarker/core/a0;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v3

    .line 4
    :goto_1
    iget v6, v0, Lfreemarker/core/j0;->return:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v6

    :cond_2
    const/16 v8, 0x98

    if-eq v6, v8, :cond_3

    .line 5
    iget-object v6, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v9, 0x44

    iget v10, v0, Lfreemarker/core/j0;->default:I

    aput v10, v6, v9

    goto :goto_2

    .line 6
    :cond_3
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_2
    const v6, 0x7fffffff

    .line 7
    invoke-direct {v0, v6}, Lfreemarker/core/j0;->s0(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->h()Ljava/util/HashMap;

    move-result-object v6

    move-object v9, v5

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->v()Ljava/util/ArrayList;

    move-result-object v6

    move-object v9, v6

    move-object v6, v5

    .line 10
    :goto_3
    iget v10, v0, Lfreemarker/core/j0;->return:I

    if-ne v10, v7, :cond_5

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v10

    :cond_5
    const/16 v11, 0x83

    if-eq v10, v11, :cond_6

    .line 11
    iget-object v8, v0, Lfreemarker/core/j0;->extends:[I

    iget v10, v0, Lfreemarker/core/j0;->default:I

    aput v10, v8, v1

    goto :goto_6

    .line 12
    :cond_6
    invoke-direct {v0, v11}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v7, :cond_7

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_7
    const/16 v10, 0x8e

    if-eq v1, v10, :cond_8

    if-eq v1, v8, :cond_8

    .line 15
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v8, 0x49

    iget v10, v0, Lfreemarker/core/j0;->default:I

    aput v10, v1, v8

    goto :goto_6

    .line 16
    :cond_8
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v7, :cond_9

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_9
    if-eq v1, v8, :cond_a

    .line 17
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v11, 0x45

    iget v12, v0, Lfreemarker/core/j0;->default:I

    aput v12, v1, v11

    goto :goto_4

    .line 18
    :cond_a
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 19
    :goto_4
    invoke-direct {v0, v10}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_5
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v7, :cond_b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_b
    const/16 v11, 0x82

    if-eq v1, v11, :cond_18

    if-eq v1, v8, :cond_18

    .line 22
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v8, 0x46

    iget v10, v0, Lfreemarker/core/j0;->default:I

    aput v10, v1, v8

    .line 23
    :goto_6
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v7, :cond_c

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_c
    const/16 v8, 0x4b

    const/16 v10, 0x94

    if-eq v1, v10, :cond_e

    const/16 v4, 0x95

    if-ne v1, v4, :cond_d

    .line 24
    invoke-direct {v0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 25
    sget-object v4, Lfreemarker/core/c4;->for:Lfreemarker/core/c4;

    goto/16 :goto_c

    .line 26
    :cond_d
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    iget v2, v0, Lfreemarker/core/j0;->default:I

    aput v2, v1, v8

    .line 27
    invoke-direct {v0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 28
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 29
    :cond_e
    invoke-direct {v0, v10}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x3

    if-eqz v5, :cond_11

    .line 30
    iget-object v10, v0, Lfreemarker/core/j0;->break:Ljava/util/List;

    if-eqz v10, :cond_11

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    .line 31
    iget-object v10, v0, Lfreemarker/core/j0;->break:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_7
    if-ge v12, v11, :cond_12

    .line 33
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    add-int/lit8 v15, v10, -0x1

    :goto_8
    if-ltz v15, :cond_10

    .line 34
    iget-object v7, v0, Lfreemarker/core/j0;->break:Ljava/util/List;

    .line 35
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/j0$new;

    .line 36
    invoke-static {v7}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_f

    invoke-static {v7}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 37
    invoke-static {v7}, Lfreemarker/core/j0$new;->try(Lfreemarker/core/j0$new;)I

    move-result v7

    if-eq v7, v1, :cond_10

    .line 38
    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->b3()Lfreemarker/core/j0$new;

    move-result-object v7

    .line 39
    invoke-static {v7, v14}, Lfreemarker/core/j0$new;->if(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-static {v7, v1}, Lfreemarker/core/j0$new;->case(Lfreemarker/core/j0$new;I)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v15, v15, -0x1

    const/16 v8, 0x4b

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0x4b

    goto :goto_7

    :cond_11
    const/4 v13, 0x0

    .line 41
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v7

    const/16 v8, 0x4b

    .line 42
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v8

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v13, :cond_13

    .line 43
    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->a3()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 44
    :cond_13
    iget-object v10, v8, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_16

    if-eqz v4, :cond_15

    .line 46
    invoke-virtual {v4}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_b

    .line 48
    :cond_14
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting </@> or </@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v8}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 49
    :cond_15
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Expecting </@>"

    invoke-direct {v1, v3, v2, v8}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    :cond_16
    :goto_b
    move-object v4, v7

    move-object v1, v8

    :goto_c
    if-eqz v9, :cond_17

    .line 50
    new-instance v6, Lfreemarker/core/s4;

    invoke-direct {v6, v3, v9, v4, v5}, Lfreemarker/core/s4;-><init>(Lfreemarker/core/h0;Ljava/util/List;Lfreemarker/core/c4;Ljava/util/List;)V

    goto :goto_d

    :cond_17
    new-instance v7, Lfreemarker/core/s4;

    invoke-direct {v7, v3, v6, v4, v5}, Lfreemarker/core/s4;-><init>(Lfreemarker/core/h0;Ljava/util/Map;Lfreemarker/core/c4;Ljava/util/List;)V

    move-object v6, v7

    .line 51
    :goto_d
    iget-object v3, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v6, v3, v2, v1}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v6

    .line 52
    :cond_18
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v7, :cond_19

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_19
    if-eq v1, v8, :cond_1a

    .line 53
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v12, 0x47

    iget v13, v0, Lfreemarker/core/j0;->default:I

    aput v13, v1, v12

    goto :goto_e

    .line 54
    :cond_1a
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 55
    :goto_e
    invoke-direct {v0, v11}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 56
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v7, :cond_1b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_1b
    if-eq v1, v8, :cond_1c

    .line 57
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v11, 0x48

    iget v12, v0, Lfreemarker/core/j0;->default:I

    aput v12, v1, v11

    goto :goto_f

    .line 58
    :cond_1c
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 59
    :goto_f
    invoke-direct {v0, v10}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 60
    iget-object v1, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5
.end method

.method public final U(Lfreemarker/core/m4;Ljava/lang/StringBuilder;)Lfreemarker/core/m4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    :pswitch_0
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object p1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 p2, 0x61

    iget v0, p0, Lfreemarker/core/j0;->default:I

    aput v0, p1, p2

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    new-instance p1, Lfreemarker/core/h3;

    invoke-direct {p1}, Lfreemarker/core/h3;-><init>()V

    throw p1

    :pswitch_1
    const/16 v0, 0x9d

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9c

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x9b

    .line 7
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x9a

    .line 8
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v2, p0, Lfreemarker/core/j0;->return:I

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_1
    packed-switch v2, :pswitch_data_1

    .line 11
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x62

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 13
    iget-object p2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    .line 14
    invoke-static {p2}, Landroid/support/v4/ul2;->throw(Lfreemarker/template/static;)I

    move-result p2

    sget v1, Landroid/support/v4/ul2;->new:I

    if-ge p2, v1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance p2, Lfreemarker/core/h3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unclosed \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {p2, v0, v1, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw p2

    :cond_3
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x9a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final V()Lfreemarker/core/t4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x18

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    .line 3
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/16 v3, 0x8d

    if-eq v2, v3, :cond_1

    .line 4
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v3, 0x26

    iget v4, p0, Lfreemarker/core/j0;->default:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    .line 7
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v3

    .line 8
    new-instance v4, Lfreemarker/core/t4;

    invoke-direct {v4, v1, v2}, Lfreemarker/core/t4;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    .line 9
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v4
.end method

.method public final W()Lfreemarker/core/c2;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/c2;

    invoke-direct {v0}, Lfreemarker/core/c2;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :cond_0
    iget v3, p0, Lfreemarker/core/j0;->return:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_1
    const/16 v5, 0x4f

    const/16 v6, 0x22

    const/16 v7, 0x21

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_3

    if-ne v3, v5, :cond_2

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/j0;->X()Lfreemarker/core/k4;

    move-result-object v3

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x6a

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 5
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->const()Lfreemarker/core/o;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_5

    if-nez v2, :cond_4

    move-object v2, v3

    .line 8
    :cond_4
    invoke-virtual {v0, v3}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    .line 9
    :cond_5
    iget v8, p0, Lfreemarker/core/j0;->return:I

    if-ne v8, v4, :cond_6

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_6
    if-eq v8, v7, :cond_0

    if-eq v8, v6, :cond_0

    if-eq v8, v5, :cond_0

    .line 10
    iget-object v4, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v5, 0x6b

    iget v6, p0, Lfreemarker/core/j0;->default:I

    aput v6, v4, v5

    if-eqz v2, :cond_8

    .line 11
    iget-boolean v4, p0, Lfreemarker/core/j0;->if:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lfreemarker/core/j0;->new:Z

    if-nez v4, :cond_7

    .line 12
    invoke-virtual {v0}, Lfreemarker/core/b4;->package()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v4

    instance-of v4, v4, Lfreemarker/core/k4;

    if-eqz v4, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0, v1, v2, v3}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    return-object v0

    :cond_8
    :goto_1
    return-object v1
.end method

.method public final X()Lfreemarker/core/k4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x4f

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lfreemarker/core/j0;->for:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lfreemarker/core/j0;->throw:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lfreemarker/core/j0;->new:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lfreemarker/core/k4;

    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfreemarker/core/k4;-><init>(Ljava/lang/String;Z)V

    .line 4
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1
.end method

.method public Y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget v0, v0, Lfreemarker/core/k0;->super:I

    return v0
.end method

.method public Z()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget-boolean v0, v0, Lfreemarker/core/k0;->this:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final a()Lfreemarker/core/h0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->q0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->implements()Lfreemarker/core/w1$do;

    move-result-object v0

    const/16 v1, 0x77

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->q()Lfreemarker/core/h0;

    move-result-object v1

    .line 5
    new-instance v2, Lfreemarker/core/w1;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/w1;-><init>(Lfreemarker/core/w1$do;Lfreemarker/core/h0;)V

    .line 6
    invoke-virtual {v0}, Lfreemarker/core/w1$do;->for()Lfreemarker/core/m4;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0}, Lfreemarker/core/w1$do;->for()Lfreemarker/core/m4;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/h4;->throw(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/h4;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0}, Lfreemarker/core/w1$do;->new()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/h4;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_2
    const/16 v2, 0x78

    if-eq v0, v2, :cond_3

    const/16 v2, 0x79

    if-eq v0, v2, :cond_3

    const/16 v2, 0x81

    if-eq v0, v2, :cond_3

    const/16 v2, 0x85

    if-eq v0, v2, :cond_3

    const/16 v2, 0x87

    if-eq v0, v2, :cond_3

    const/16 v2, 0x89

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8e

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x10

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 11
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 12
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 13
    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->q()Lfreemarker/core/h0;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final abstract()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x4f

    if-eq v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x6c

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    :goto_0
    iget v0, p0, Lfreemarker/core/j0;->return:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_2
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_4

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_3

    .line 5
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_2

    .line 6
    :cond_3
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x6e

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 7
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 8
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 9
    :cond_4
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v0, 0x0

    move-object v2, v0

    .line 10
    :cond_5
    :goto_1
    iget v3, p0, Lfreemarker/core/j0;->return:I

    if-ne v3, v1, :cond_6

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_6
    const/16 v4, 0x8e

    if-eq v3, v4, :cond_8

    .line 11
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x6d

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    if-eqz v2, :cond_7

    .line 12
    invoke-virtual {p0, v2}, Lfreemarker/core/j0;->b0(Lfreemarker/core/m4;)V

    .line 13
    :cond_7
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    :goto_2
    return-void

    .line 14
    :cond_8
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    const/16 v4, 0x69

    .line 15
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 16
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v4

    .line 17
    iget-object v5, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v5, v3}, Lfreemarker/core/k0;->else(Lfreemarker/core/m4;)V

    .line 18
    iget-object v5, v3, Lfreemarker/core/m4;->image:Ljava/lang/String;

    .line 19
    :try_start_0
    invoke-virtual {v4, v0}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 20
    instance-of v7, v6, Lfreemarker/template/TemplateScalarModel;

    if-eqz v7, :cond_9

    .line 21
    :try_start_1
    move-object v7, v4

    check-cast v7, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/support/v4/k52; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :cond_9
    move-object v7, v0

    .line 22
    :goto_3
    iget-object v8, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    if-eqz v8, :cond_5

    const-string v8, "encoding"

    .line 23
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "\"."

    const-string v11, "Expected a string constant for \""

    if-eqz v9, :cond_c

    if-eqz v7, :cond_b

    .line 24
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3}, Lfreemarker/template/static;->e1()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 25
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_1

    .line 26
    :cond_a
    new-instance v0, Lfreemarker/template/static$if;

    invoke-direct {v0, v7, v3}, Lfreemarker/template/static$if;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_b
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0

    :cond_c
    const-string v9, "STRIP_WHITESPACE"

    .line 28
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v12, 0x1

    if-nez v9, :cond_26

    const-string v9, "stripWhitespace"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_f

    :cond_d
    const-string v9, "STRIP_TEXT"

    .line 29
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25

    const-string v9, "stripText"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto/16 :goto_e

    :cond_e
    const-string v9, "STRICT_SYNTAX"

    .line 30
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    const-string v9, "strictSyntax"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto/16 :goto_d

    :cond_f
    const-string v9, "auto_esc"

    .line 31
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_22

    const-string v12, "autoEsc"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    goto/16 :goto_b

    :cond_10
    const-string v13, "output_format"

    .line 32
    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_20

    const-string v13, "outputFormat"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto/16 :goto_a

    :cond_11
    const-string v7, "ns_prefixes"

    .line 33
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1d

    const-string v10, "nsPrefixes"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    goto/16 :goto_8

    :cond_12
    const-string v11, "attributes"

    .line 34
    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 35
    instance-of v3, v6, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v3, :cond_13

    .line 36
    check-cast v6, Lfreemarker/template/TemplateHashModelEx;

    .line 37
    :try_start_2
    invoke-interface {v6}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v3

    .line 38
    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 39
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v4

    check-cast v4, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v4}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-interface {v6, v4}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    invoke-static {v5}, Lfreemarker/template/utility/try;->for(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    iget-object v7, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v7, v4, v5}, Lfreemarker/core/t;->m0(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/support/v4/k52; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    nop

    goto/16 :goto_1

    .line 42
    :cond_13
    new-instance v0, Lfreemarker/core/h3;

    const-string v1, "Expecting a hash of attribute names to values."

    invoke-direct {v0, v1, v4}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0

    :cond_14
    const-string v1, "charset"

    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v0, v8

    goto :goto_6

    :cond_15
    const-string v1, "xmlns"

    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 45
    iget-object v0, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget v0, v0, Lfreemarker/core/k0;->super:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_16

    move-object v0, v10

    goto :goto_6

    :cond_16
    move-object v0, v7

    goto :goto_6

    :cond_17
    const-string v1, "auto_escape"

    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "auto_escaping"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "autoesc"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_5

    :cond_18
    const-string v1, "autoEscape"

    .line 47
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "autoEscaping"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    move-object v0, v12

    goto :goto_6

    :cond_1a
    :goto_5
    move-object v0, v9

    .line 48
    :cond_1b
    :goto_6
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown FTL header parameter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1c

    const-string v0, ""

    goto :goto_7

    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ". You may meant: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v0, v2, v3}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 49
    :cond_1d
    :goto_8
    instance-of v3, v6, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v3, :cond_1f

    .line 50
    check-cast v6, Lfreemarker/template/TemplateHashModelEx;

    .line 51
    :try_start_3
    invoke-interface {v6}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v3

    .line 52
    invoke-interface {v3}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 53
    invoke-interface {v3}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v5

    check-cast v5, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v5}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-interface {v6, v5}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v7

    .line 55
    instance-of v8, v7, Lfreemarker/template/TemplateScalarModel;

    if-eqz v8, :cond_1e

    .line 56
    check-cast v7, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v7}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Landroid/support/v4/k52; {:try_start_3 .. :try_end_3} :catch_1

    .line 57
    :try_start_4
    iget-object v8, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v8, v5, v7}, Lfreemarker/template/static;->S0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/support/v4/k52; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_2
    move-exception v3

    .line 58
    :try_start_5
    new-instance v5, Lfreemarker/core/h3;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v5

    .line 59
    :cond_1e
    new-instance v3, Lfreemarker/core/h3;

    const-string v5, "Non-string value in prefix to namespace hash."

    invoke-direct {v3, v5, v4}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v3
    :try_end_5
    .catch Landroid/support/v4/k52; {:try_start_5 .. :try_end_5} :catch_1

    .line 60
    :cond_1f
    new-instance v0, Lfreemarker/core/h3;

    const-string v1, "Expecting a hash of prefixes to namespace URI\'s."

    invoke-direct {v0, v1, v4}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0

    :cond_20
    :goto_a
    if-eqz v7, :cond_21

    .line 61
    :try_start_6
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v3

    invoke-virtual {v3, v7}, Lfreemarker/template/do;->D1(Ljava/lang/String;)Landroid/support/v4/e91;

    move-result-object v3

    iput-object v3, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/support/v4/jc2; {:try_start_6 .. :try_end_6} :catch_3

    .line 62
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    .line 63
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    iget-object v4, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    invoke-static {v3, v4}, Landroid/support/v4/ul2;->import(Lfreemarker/template/static;Landroid/support/v4/e91;)V

    .line 64
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    iget-boolean v4, p0, Lfreemarker/core/j0;->goto:Z

    invoke-static {v3, v4}, Landroid/support/v4/ul2;->while(Lfreemarker/template/static;Z)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 65
    new-instance v1, Lfreemarker/core/h3;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 66
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    throw v1

    .line 67
    :cond_21
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0

    :cond_22
    :goto_b
    const/4 v5, 0x0

    .line 68
    invoke-direct {p0, v4, v5}, Lfreemarker/core/j0;->k0(Lfreemarker/core/h0;Z)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v2, 0x16

    .line 69
    iput v2, p0, Lfreemarker/core/j0;->else:I

    move-object v2, v3

    goto :goto_c

    :cond_23
    const/16 v3, 0x14

    .line 70
    iput v3, p0, Lfreemarker/core/j0;->else:I

    .line 71
    :goto_c
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    .line 72
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    iget-boolean v4, p0, Lfreemarker/core/j0;->goto:Z

    invoke-static {v3, v4}, Landroid/support/v4/ul2;->while(Lfreemarker/template/static;Z)V

    goto/16 :goto_1

    .line 73
    :cond_24
    :goto_d
    iget-object v3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-direct {p0, v4, v12}, Lfreemarker/core/j0;->k0(Lfreemarker/core/h0;Z)Z

    move-result v4

    iput-boolean v4, v3, Lfreemarker/core/k0;->goto:Z

    goto/16 :goto_1

    .line 74
    :cond_25
    :goto_e
    invoke-direct {p0, v4, v12}, Lfreemarker/core/j0;->k0(Lfreemarker/core/h0;Z)Z

    move-result v3

    iput-boolean v3, p0, Lfreemarker/core/j0;->for:Z

    goto/16 :goto_1

    .line 75
    :cond_26
    :goto_f
    invoke-direct {p0, v4, v12}, Lfreemarker/core/j0;->k0(Lfreemarker/core/h0;Z)Z

    move-result v3

    iput-boolean v3, p0, Lfreemarker/core/j0;->if:Z

    goto/16 :goto_1

    :catch_5
    move-exception v0

    .line 76
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not evaluate expression (on parse-time): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \nUnderlying cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    goto :goto_11

    :goto_10
    throw v1

    :goto_11
    goto :goto_10
.end method

.method public final b()Lfreemarker/core/m4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x94

    if-eq v0, v2, :cond_2

    const/16 v2, 0x95

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x5d

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b0(Lfreemarker/core/m4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of v0, v0, Lfreemarker/core/y1;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current output format can\'t do escaping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v1, v2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0
.end method

.method public final break()Lfreemarker/core/k;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x63

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/16 v1, 0x8e

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v2, v1}, Lfreemarker/core/k0;->else(Lfreemarker/core/m4;)V

    .line 4
    iget-object v2, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const-string v3, "output_format"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "auto_esc"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "autoEsc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lfreemarker/core/j0;->goto:Z

    if-eqz v2, :cond_3

    sget-object v2, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_2

    :cond_3
    sget-object v2, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_2

    .line 8
    :cond_4
    :goto_1
    new-instance v2, Landroid/support/v4/ez1;

    iget-object v3, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    invoke-virtual {v3}, Landroid/support/v4/e91;->if()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_2
    new-instance v3, Lfreemarker/core/k;

    iget-object v4, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-direct {v3, v1, v4, v2}, Lfreemarker/core/k;-><init>(Lfreemarker/core/m4;Lfreemarker/core/k0;Lfreemarker/template/TemplateModel;)V

    .line 10
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v2, v0, v1}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final c()Lfreemarker/core/x1;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget v2, v0, Lfreemarker/core/j0;->return:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/16 v6, 0x15

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v6, :cond_2

    const/16 v6, 0x16

    if-ne v2, v6, :cond_1

    .line 5
    invoke-direct {v0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    move-object v9, v2

    const/4 v6, 0x0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x3c

    iget v3, v0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    .line 7
    invoke-direct {v0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 8
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 9
    :cond_2
    invoke-direct {v0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    move-object v9, v2

    const/4 v6, 0x1

    .line 10
    :goto_0
    iget-boolean v2, v0, Lfreemarker/core/j0;->const:Z

    if-nez v2, :cond_1d

    iget-boolean v2, v0, Lfreemarker/core/j0;->final:Z

    if-nez v2, :cond_1d

    if-eqz v6, :cond_3

    .line 11
    iput-boolean v7, v0, Lfreemarker/core/j0;->final:Z

    goto :goto_1

    :cond_3
    iput-boolean v7, v0, Lfreemarker/core/j0;->const:Z

    .line 12
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->strictfp()Lfreemarker/core/h0;

    move-result-object v2

    .line 13
    instance-of v10, v2, Lfreemarker/core/x3;

    if-eqz v10, :cond_4

    check-cast v2, Lfreemarker/core/x3;

    .line 14
    invoke-virtual {v2}, Lfreemarker/core/x3;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    check-cast v2, Lfreemarker/core/w0;

    .line 15
    invoke-virtual {v2}, Lfreemarker/core/w0;->d()Ljava/lang/String;

    move-result-object v2

    .line 16
    :goto_2
    iget v10, v0, Lfreemarker/core/j0;->return:I

    if-ne v10, v5, :cond_5

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v10

    :cond_5
    const/16 v11, 0x87

    if-eq v10, v11, :cond_6

    .line 17
    iget-object v10, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v11, 0x3d

    iget v12, v0, Lfreemarker/core/j0;->default:I

    aput v12, v10, v11

    goto :goto_3

    .line 18
    :cond_6
    invoke-direct {v0, v11}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_3
    const/4 v10, 0x0

    move-object v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 19
    :goto_4
    iget v14, v0, Lfreemarker/core/j0;->return:I

    if-ne v14, v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v14

    :cond_7
    const/16 v15, 0x8e

    if-eq v14, v15, :cond_11

    .line 20
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v7, 0x3e

    iget v12, v0, Lfreemarker/core/j0;->default:I

    aput v12, v1, v7

    .line 21
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_8
    const/16 v7, 0x88

    if-eq v1, v7, :cond_9

    .line 22
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v7, 0x42

    iget v12, v0, Lfreemarker/core/j0;->default:I

    aput v12, v1, v7

    goto :goto_5

    .line 23
    :cond_9
    invoke-direct {v0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_5
    const/16 v1, 0x94

    .line 24
    invoke-direct {v0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 25
    iget-object v1, v0, Lfreemarker/core/j0;->break:Ljava/util/List;

    .line 26
    iput-object v10, v0, Lfreemarker/core/j0;->break:Ljava/util/List;

    .line 27
    iget v7, v0, Lfreemarker/core/j0;->try:I

    sget v10, Landroid/support/v4/ul2;->case:I

    if-lt v7, v10, :cond_a

    .line 28
    iget v7, v0, Lfreemarker/core/j0;->catch:I

    .line 29
    iget v12, v0, Lfreemarker/core/j0;->class:I

    .line 30
    iput v8, v0, Lfreemarker/core/j0;->catch:I

    .line 31
    iput v8, v0, Lfreemarker/core/j0;->class:I

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 32
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v13

    .line 33
    iget v14, v0, Lfreemarker/core/j0;->return:I

    if-ne v14, v5, :cond_b

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v14

    :cond_b
    const/16 v15, 0x2e

    if-eq v14, v15, :cond_e

    const/16 v15, 0x2f

    if-ne v14, v15, :cond_d

    .line 34
    invoke-direct {v0, v15}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v5

    if-nez v6, :cond_c

    goto :goto_7

    .line 35
    :cond_c
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Expected function end tag here."

    invoke-direct {v1, v3, v2, v5}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 36
    :cond_d
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x43

    iget v3, v0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    .line 37
    invoke-direct {v0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 38
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 39
    :cond_e
    invoke-direct {v0, v15}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v5

    if-eqz v6, :cond_10

    :goto_7
    move-object v14, v5

    .line 40
    iput-object v1, v0, Lfreemarker/core/j0;->break:Ljava/util/List;

    .line 41
    iget v1, v0, Lfreemarker/core/j0;->try:I

    if-lt v1, v10, :cond_f

    .line 42
    iput v7, v0, Lfreemarker/core/j0;->catch:I

    .line 43
    iput v12, v0, Lfreemarker/core/j0;->class:I

    .line 44
    :cond_f
    iput-boolean v8, v0, Lfreemarker/core/j0;->final:Z

    iput-boolean v8, v0, Lfreemarker/core/j0;->const:Z

    .line 45
    new-instance v8, Lfreemarker/core/x1;

    move-object v1, v8

    move-object v5, v11

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/x1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLfreemarker/core/c4;)V

    .line 46
    iget-object v1, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v8, v1, v9, v14}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    .line 47
    iget-object v1, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v8}, Lfreemarker/template/static;->R0(Lfreemarker/core/x1;)V

    return-object v8

    .line 48
    :cond_10
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Expected macro end tag here."

    invoke-direct {v1, v3, v2, v5}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 49
    :cond_11
    invoke-direct {v0, v15}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v14

    .line 50
    iget v15, v0, Lfreemarker/core/j0;->return:I

    if-ne v15, v5, :cond_12

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v15

    :cond_12
    const/16 v7, 0x7c

    if-eq v15, v7, :cond_13

    .line 51
    iget-object v7, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v15, 0x3f

    iget v8, v0, Lfreemarker/core/j0;->default:I

    aput v8, v7, v15

    goto :goto_8

    .line 52
    :cond_13
    invoke-direct {v0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v12, 0x1

    .line 53
    :goto_8
    iget v7, v0, Lfreemarker/core/j0;->return:I

    if-ne v7, v5, :cond_14

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v7

    :cond_14
    const/16 v8, 0x69

    if-eq v7, v8, :cond_15

    .line 54
    iget-object v7, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v8, 0x40

    iget v15, v0, Lfreemarker/core/j0;->default:I

    aput v15, v7, v8

    move-object v7, v10

    goto :goto_9

    .line 55
    :cond_15
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 56
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v7

    .line 57
    iget-object v8, v14, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    .line 58
    :goto_9
    iget v8, v0, Lfreemarker/core/j0;->return:I

    if-ne v8, v5, :cond_16

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_16
    const/16 v15, 0x82

    if-eq v8, v15, :cond_17

    .line 59
    iget-object v8, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v15, 0x41

    iget v5, v0, Lfreemarker/core/j0;->default:I

    aput v5, v8, v15

    goto :goto_a

    .line 60
    :cond_17
    invoke-direct {v0, v15}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_a
    if-nez v11, :cond_1c

    if-eqz v12, :cond_19

    if-nez v7, :cond_18

    .line 61
    iget-object v11, v14, Lfreemarker/core/m4;->image:Ljava/lang/String;

    goto :goto_c

    .line 62
    :cond_18
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "\"Catch-all\" macro parameter may not have a default value."

    invoke-direct {v1, v3, v2, v14}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 63
    :cond_19
    iget-object v5, v14, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_1b

    if-eqz v7, :cond_1a

    goto :goto_b

    .line 64
    :cond_1a
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "In a macro declaration, parameters without a default value must all occur before the parameters with default values."

    invoke-direct {v1, v3, v2, v14}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 65
    :cond_1b
    :goto_b
    iget-object v5, v14, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    .line 66
    :cond_1c
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "There may only be one \"catch-all\" parameter in a macro declaration, and it must be the last parameter."

    invoke-direct {v1, v3, v2, v14}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 67
    :cond_1d
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Macro or function definitions can\'t be nested into each other."

    invoke-direct {v1, v3, v2, v9}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    goto :goto_e

    :goto_d
    throw v1

    :goto_e
    goto :goto_d
.end method

.method public final case()Lfreemarker/core/class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x1e

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->b0(Lfreemarker/core/m4;)V

    .line 3
    iget v1, p0, Lfreemarker/core/j0;->else:I

    const/16 v2, 0x16

    .line 4
    iput v2, p0, Lfreemarker/core/j0;->else:I

    .line 5
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v2

    const/16 v3, 0x31

    .line 7
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 8
    new-instance v4, Lfreemarker/core/class;

    invoke-direct {v4, v2}, Lfreemarker/core/class;-><init>(Lfreemarker/core/c4;)V

    .line 9
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v2, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    .line 10
    iput v1, p0, Lfreemarker/core/j0;->else:I

    .line 11
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    return-object v4
.end method

.method public final catch()Lfreemarker/core/b4;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x1b

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/16 v1, 0x8e

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 3
    new-instance v2, Lfreemarker/core/w0;

    iget-object v3, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {v2, v3}, Lfreemarker/core/w0;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v3, v1, v1}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    const v1, 0x7fffffff

    .line 5
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->u0(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/j0;->h()Ljava/util/HashMap;

    move-result-object v1

    move-object v3, v1

    move-object v1, v4

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->t0(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x87

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->v()Ljava/util/ArrayList;

    move-result-object v1

    .line 10
    iget v3, p0, Lfreemarker/core/j0;->return:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_2
    const/16 v5, 0x88

    if-eq v3, v5, :cond_3

    .line 11
    iget-object v3, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v5, 0x4c

    iget v6, p0, Lfreemarker/core/j0;->default:I

    aput v6, v3, v5

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_0
    move-object v3, v4

    .line 13
    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v5

    if-eqz v1, :cond_4

    .line 14
    new-instance v3, Lfreemarker/core/s4;

    sget-object v6, Lfreemarker/core/c4;->for:Lfreemarker/core/c4;

    invoke-direct {v3, v2, v1, v6, v4}, Lfreemarker/core/s4;-><init>(Lfreemarker/core/h0;Ljava/util/List;Lfreemarker/core/c4;Ljava/util/List;)V

    goto :goto_2

    .line 15
    :cond_4
    new-instance v1, Lfreemarker/core/s4;

    sget-object v6, Lfreemarker/core/c4;->for:Lfreemarker/core/c4;

    invoke-direct {v1, v2, v3, v6, v4}, Lfreemarker/core/s4;-><init>(Lfreemarker/core/h0;Ljava/util/Map;Lfreemarker/core/c4;Ljava/util/List;)V

    move-object v3, v1

    :goto_2
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v3, Lfreemarker/core/s4;->throw:Z

    .line 17
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v5}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final class()Lfreemarker/core/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0xf

    if-eq v0, v2, :cond_2

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x5c

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    const/16 v2, 0x94

    .line 8
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v2

    .line 10
    new-instance v3, Lfreemarker/core/l;

    invoke-direct {v3, v1, v2}, Lfreemarker/core/l;-><init>(Lfreemarker/core/h0;Lfreemarker/core/c4;)V

    .line 11
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v0, v2}, Lfreemarker/core/h4;->import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V

    return-object v3
.end method

.method public final const()Lfreemarker/core/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v3, 0x21

    if-eq v1, v3, :cond_2

    const/16 v3, 0x22

    if-ne v1, v3, :cond_1

    .line 3
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x54

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 5
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 7
    :cond_2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 8
    :goto_0
    invoke-virtual {p0, v1, v0}, Lfreemarker/core/j0;->U(Lfreemarker/core/m4;Ljava/lang/StringBuilder;)Lfreemarker/core/m4;

    move-result-object v2

    .line 9
    new-instance v3, Lfreemarker/core/o;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lfreemarker/core/o;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v0, v1, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final continue()Lfreemarker/core/w0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x8e

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    new-instance v1, Lfreemarker/core/w0;

    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {v1, v2}, Lfreemarker/core/w0;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1
.end method

.method public final d(Lfreemarker/core/h0;)Lfreemarker/core/a2;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x87

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/j0;->v()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x88

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 6
    new-instance v2, Lfreemarker/core/a2;

    invoke-direct {v2, p1, v0}, Lfreemarker/core/a2;-><init>(Lfreemarker/core/h0;Ljava/util/ArrayList;)V

    .line 7
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v0, p1, v1}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    return-object v2
.end method

.method public final default()Lfreemarker/core/b4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x3b

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    new-instance v1, Lfreemarker/core/n0;

    invoke-direct {v1}, Lfreemarker/core/n0;-><init>()V

    .line 3
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1
.end method

.method public final do()Lfreemarker/core/h0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->g()Lfreemarker/core/h0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->p0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x78

    if-eq v1, v4, :cond_2

    const/16 v4, 0x79

    if-ne v1, v4, :cond_1

    .line 4
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v1, 0x6

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 6
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 7
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 8
    :cond_2
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x1

    .line 9
    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->g()Lfreemarker/core/h0;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Lfreemarker/core/if;

    invoke-direct {v1, v0, v2}, Lfreemarker/core/if;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->Y2(Lfreemarker/core/h0;)V

    .line 12
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->Y2(Lfreemarker/core/h0;)V

    .line 13
    new-instance v1, Lfreemarker/core/goto;

    invoke-direct {v1, v0, v2, v3}, Lfreemarker/core/goto;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;I)V

    .line 14
    :goto_2
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v3, v0, v2}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final e()Lfreemarker/core/c2;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/c2;

    invoke-direct {v0}, Lfreemarker/core/c2;-><init>()V

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->throw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/j0;->throw:I

    const/4 v1, 0x0

    .line 3
    :cond_0
    :pswitch_0
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_1
    const/16 v4, 0x4a

    const/16 v5, 0x48

    const/16 v6, 0x8

    const/4 v7, 0x6

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    .line 4
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x65

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 5
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->o()Lfreemarker/core/a3;

    move-result-object v2

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->N()Lfreemarker/core/z;

    move-result-object v2

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->s()Lfreemarker/core/k4;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_2
    :pswitch_4
    invoke-virtual {p0}, Lfreemarker/core/j0;->package()Lfreemarker/core/b4;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_3

    move-object v1, v2

    .line 11
    :cond_3
    invoke-virtual {v0, v2}, Lfreemarker/core/c2;->s(Lfreemarker/core/b4;)V

    .line 12
    iget v8, p0, Lfreemarker/core/j0;->return:I

    if-ne v8, v3, :cond_4

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_4
    if-eq v8, v7, :cond_0

    if-eq v8, v6, :cond_0

    if-eq v8, v5, :cond_0

    if-eq v8, v4, :cond_0

    packed-switch v8, :pswitch_data_5

    packed-switch v8, :pswitch_data_6

    packed-switch v8, :pswitch_data_7

    packed-switch v8, :pswitch_data_8

    packed-switch v8, :pswitch_data_9

    .line 13
    iget-object v3, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x66

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v3, v4

    .line 14
    iget v3, p0, Lfreemarker/core/j0;->throw:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lfreemarker/core/j0;->throw:I

    .line 15
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0, v3, v1, v2}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
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
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e0()V
    .locals 0

    return-void
.end method

.method public e3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/core/j0;->new:Z

    return-void
.end method

.method public final else()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x60

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 3
    new-instance v1, Lfreemarker/core/while;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lfreemarker/core/while;-><init>(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x17

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 5
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 7
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 8
    new-instance v1, Lfreemarker/core/while;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfreemarker/core/while;-><init>(Z)V

    .line 9
    :goto_0
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1
.end method

.method public final extends()Lfreemarker/core/d1;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/16 v1, 0x8e

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    const/16 v2, 0x8b

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v4

    const/16 v2, 0x94

    .line 5
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->b3()Lfreemarker/core/j0$new;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-static {v2, v3}, Lfreemarker/core/j0$new;->if(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    .line 8
    invoke-static {v2, v3}, Lfreemarker/core/j0$new;->case(Lfreemarker/core/j0$new;I)I

    .line 9
    iget v2, p0, Lfreemarker/core/j0;->catch:I

    add-int/2addr v2, v3

    iput v2, p0, Lfreemarker/core/j0;->catch:I

    .line 10
    iget v2, p0, Lfreemarker/core/j0;->class:I

    add-int/2addr v2, v3

    iput v2, p0, Lfreemarker/core/j0;->class:I

    .line 11
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v7

    const/16 v2, 0x2a

    .line 12
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 13
    iget v5, p0, Lfreemarker/core/j0;->catch:I

    sub-int/2addr v5, v3

    iput v5, p0, Lfreemarker/core/j0;->catch:I

    .line 14
    iget v5, p0, Lfreemarker/core/j0;->class:I

    sub-int/2addr v5, v3

    iput v5, p0, Lfreemarker/core/j0;->class:I

    .line 15
    invoke-direct {p0}, Lfreemarker/core/j0;->a3()V

    .line 16
    new-instance v10, Lfreemarker/core/d1;

    iget-object v5, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lfreemarker/core/d1;-><init>(Lfreemarker/core/h0;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/c4;ZZ)V

    .line 17
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v10, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v10
.end method

.method public final f()Lfreemarker/core/c4;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->throw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/j0;->throw:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :cond_0
    :goto_0
    iget v3, p0, Lfreemarker/core/j0;->return:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_1
    const/16 v5, 0x4a

    const/16 v6, 0x48

    const/16 v7, 0x8

    const/4 v8, 0x6

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    .line 3
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v3, 0x63

    iget v4, p0, Lfreemarker/core/j0;->default:I

    aput v4, v0, v3

    .line 4
    iget v0, p0, Lfreemarker/core/j0;->throw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfreemarker/core/j0;->throw:I

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lfreemarker/core/c4;

    invoke-direct {v0, v1, v2}, Lfreemarker/core/c4;-><init>([Lfreemarker/core/b4;I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lfreemarker/core/c4;->for:Lfreemarker/core/c4;

    :goto_1
    return-object v0

    .line 6
    :cond_3
    :pswitch_0
    iget v3, p0, Lfreemarker/core/j0;->return:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_4
    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_5

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    packed-switch v3, :pswitch_data_7

    packed-switch v3, :pswitch_data_8

    packed-switch v3, :pswitch_data_9

    .line 7
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x64

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 8
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 9
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->o()Lfreemarker/core/a3;

    move-result-object v3

    goto :goto_2

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->N()Lfreemarker/core/z;

    move-result-object v3

    goto :goto_2

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->s()Lfreemarker/core/k4;

    move-result-object v3

    goto :goto_2

    .line 13
    :cond_5
    :pswitch_4
    invoke-virtual {p0}, Lfreemarker/core/j0;->package()Lfreemarker/core/b4;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_6

    const/16 v1, 0x10

    new-array v1, v1, [Lfreemarker/core/b4;

    goto :goto_4

    .line 14
    :cond_6
    array-length v4, v1

    if-ge v4, v2, :cond_8

    mul-int/lit8 v4, v2, 0x2

    .line 15
    new-array v4, v4, [Lfreemarker/core/b4;

    const/4 v5, 0x0

    .line 16
    :goto_3
    array-length v6, v1

    if-ge v5, v6, :cond_7

    .line 17
    aget-object v6, v1, v5

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move-object v1, v4

    :cond_8
    :goto_4
    add-int/lit8 v4, v2, -0x1

    .line 18
    aput-object v3, v1, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x10
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
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x37
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x41
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x4f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public f3(Lfreemarker/core/j0;Landroid/support/v4/e91;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    .line 2
    iget-object v1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget v2, v0, Lfreemarker/core/k0;->final:I

    iput v2, v1, Lfreemarker/core/k0;->final:I

    .line 3
    iget v2, v0, Lfreemarker/core/k0;->super:I

    iput v2, v1, Lfreemarker/core/k0;->super:I

    .line 4
    iget-object v0, v0, Lfreemarker/core/k0;->throw:Lfreemarker/core/m4;

    iput-object v0, v1, Lfreemarker/core/k0;->throw:Lfreemarker/core/m4;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v1, v0}, Lfreemarker/core/k0;->try(I)V

    .line 6
    iput-object p2, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    .line 7
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    .line 8
    iget p2, p0, Lfreemarker/core/j0;->try:I

    sget v0, Landroid/support/v4/ul2;->else:I

    if-ge p2, v0, :cond_0

    .line 9
    sget p2, Landroid/support/v4/ul2;->do:I

    iput p2, p0, Lfreemarker/core/j0;->try:I

    .line 10
    :cond_0
    iget-object p1, p1, Lfreemarker/core/j0;->break:Ljava/util/List;

    iput-object p1, p0, Lfreemarker/core/j0;->break:Ljava/util/List;

    return-void
.end method

.method public final final()Lfreemarker/core/r;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v1

    const/16 v2, 0x33

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 4
    new-instance v3, Lfreemarker/core/r;

    invoke-direct {v3, v1}, Lfreemarker/core/r;-><init>(Lfreemarker/core/c4;)V

    .line 5
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final finally()Lfreemarker/core/b4;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/c2;

    invoke-direct {v0}, Lfreemarker/core/c2;-><init>()V

    const/4 v1, 0x0

    .line 2
    :pswitch_0
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x68

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 4
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->o()Lfreemarker/core/a3;

    move-result-object v2

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->N()Lfreemarker/core/z;

    move-result-object v2

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->s()Lfreemarker/core/k4;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v2

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    .line 10
    iget v4, p0, Lfreemarker/core/j0;->return:I

    if-ne v4, v3, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_2
    packed-switch v4, :pswitch_data_1

    .line 11
    iget-object v3, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x69

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v3, v4

    .line 12
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0, v3, v1, v2}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final for()Lfreemarker/core/b4;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v2, v0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x2e

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 4
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    :pswitch_0
    const/16 v2, 0x12

    .line 6
    invoke-direct {v0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 7
    iget-boolean v7, v0, Lfreemarker/core/j0;->const:Z

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lfreemarker/core/j0;->final:Z

    if-eqz v7, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lfreemarker/core/h3;

    iget-object v3, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v4, "Local variable assigned outside a macro."

    invoke-direct {v1, v4, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v10, 0x2

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x11

    .line 9
    invoke-direct {v0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    const/4 v10, 0x3

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x10

    .line 10
    invoke-direct {v0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    const/4 v10, 0x1

    .line 11
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->strictfp()Lfreemarker/core/h0;

    move-result-object v7

    .line 12
    instance-of v8, v7, Lfreemarker/core/x3;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Lfreemarker/core/x3;

    .line 13
    invoke-virtual {v8}, Lfreemarker/core/x3;->getAsString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v7

    check-cast v8, Lfreemarker/core/w0;

    .line 14
    invoke-virtual {v8}, Lfreemarker/core/w0;->d()Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object v9, v8

    .line 15
    iget v8, v0, Lfreemarker/core/j0;->return:I

    if-ne v8, v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_4
    const-string v11, "Cannot assign to namespace here."

    const/16 v13, 0x8b

    const/16 v14, 0x69

    if-eq v8, v14, :cond_d

    const/16 v15, 0x94

    if-eq v8, v13, :cond_5

    if-eq v8, v15, :cond_5

    packed-switch v8, :pswitch_data_1

    .line 16
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x39

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 17
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 18
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 19
    :cond_5
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_6
    if-eq v1, v13, :cond_7

    .line 20
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v7, 0x37

    iget v8, v0, Lfreemarker/core/j0;->default:I

    aput v8, v1, v7

    const/4 v11, 0x0

    goto :goto_3

    .line 21
    :cond_7
    invoke-direct {v0, v13}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 22
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v7

    if-ne v10, v6, :cond_c

    move-object v11, v7

    .line 23
    :goto_3
    invoke-direct {v0, v15}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v8

    .line 25
    iget v1, v0, Lfreemarker/core/j0;->return:I

    if-ne v1, v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_8
    const-string v7, "Mismatched assignment tags."

    packed-switch v1, :pswitch_data_2

    .line 26
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x38

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 27
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 28
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    :pswitch_3
    const/16 v1, 0x2d

    .line 29
    invoke-direct {v0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    if-ne v10, v6, :cond_9

    goto :goto_4

    .line 30
    :cond_9
    new-instance v2, Lfreemarker/core/h3;

    iget-object v3, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v2, v7, v3, v1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v2

    :pswitch_4
    const/16 v1, 0x2c

    .line 31
    invoke-direct {v0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    if-ne v10, v5, :cond_a

    goto :goto_4

    .line 32
    :cond_a
    new-instance v2, Lfreemarker/core/h3;

    iget-object v3, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v4, "Mismatched assignment tags"

    invoke-direct {v2, v4, v3, v1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v2

    :pswitch_5
    const/16 v1, 0x2b

    .line 33
    invoke-direct {v0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    if-ne v10, v4, :cond_b

    .line 34
    :goto_4
    new-instance v3, Lfreemarker/core/final;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->m0()Lfreemarker/core/y1;

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lfreemarker/core/final;-><init>(Lfreemarker/core/c4;Ljava/lang/String;ILfreemarker/core/h0;Lfreemarker/core/y1;)V

    .line 36
    iget-object v4, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v4, v2, v1}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3

    .line 37
    :cond_b
    new-instance v2, Lfreemarker/core/h3;

    iget-object v3, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v2, v7, v3, v1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v2

    .line 38
    :cond_c
    new-instance v2, Lfreemarker/core/h3;

    iget-object v3, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v2, v11, v3, v1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v2

    .line 39
    :cond_d
    :pswitch_6
    iget v4, v0, Lfreemarker/core/j0;->return:I

    if-ne v4, v3, :cond_e

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_e
    const/16 v5, 0x70

    const/16 v8, 0x6f

    const/16 v15, 0x6e

    const/16 v12, 0x6d

    const/16 v13, 0x72

    const/16 v6, 0x71

    if-eq v4, v14, :cond_12

    packed-switch v4, :pswitch_data_3

    .line 40
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x31

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 41
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 42
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 43
    :pswitch_7
    iget v4, v0, Lfreemarker/core/j0;->return:I

    if-ne v4, v3, :cond_f

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_f
    if-eq v4, v6, :cond_11

    if-ne v4, v13, :cond_10

    .line 44
    invoke-direct {v0, v13}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_5

    .line 45
    :cond_10
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x30

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 46
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 47
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 48
    :cond_11
    invoke-direct {v0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 49
    :goto_5
    iget-object v4, v0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    const/4 v12, 0x0

    goto :goto_7

    .line 50
    :cond_12
    :pswitch_8
    iget v4, v0, Lfreemarker/core/j0;->return:I

    if-ne v4, v3, :cond_13

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_13
    if-eq v4, v14, :cond_14

    packed-switch v4, :pswitch_data_4

    .line 51
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x2f

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 52
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 53
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 54
    :pswitch_9
    invoke-direct {v0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_6

    .line 55
    :pswitch_a
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_6

    .line 56
    :pswitch_b
    invoke-direct {v0, v15}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_6

    .line 57
    :pswitch_c
    invoke-direct {v0, v12}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_6

    :pswitch_d
    const/16 v4, 0x6c

    .line 58
    invoke-direct {v0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_6

    .line 59
    :cond_14
    invoke-direct {v0, v14}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 60
    :goto_6
    iget-object v4, v0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    .line 61
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v16

    move-object/from16 v12, v16

    .line 62
    :goto_7
    new-instance v15, Lfreemarker/core/this;

    iget v8, v4, Lfreemarker/core/m4;->kind:I

    invoke-direct {v15, v9, v8, v12, v10}, Lfreemarker/core/this;-><init>(Ljava/lang/String;ILfreemarker/core/h0;I)V

    if-eqz v12, :cond_15

    .line 63
    iget-object v4, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v15, v4, v7, v12}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    goto :goto_8

    .line 64
    :cond_15
    iget-object v8, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v15, v8, v7, v4}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    .line 65
    :goto_8
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const v4, 0x7fffffff

    .line 66
    invoke-direct {v0, v4}, Lfreemarker/core/j0;->r0(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 67
    iget v4, v0, Lfreemarker/core/j0;->return:I

    if-ne v4, v3, :cond_16

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_16
    const/16 v7, 0x82

    if-eq v4, v7, :cond_17

    .line 68
    iget-object v4, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v7, 0x32

    iget v8, v0, Lfreemarker/core/j0;->default:I

    aput v8, v4, v7

    goto :goto_a

    .line 69
    :cond_17
    invoke-direct {v0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 70
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->strictfp()Lfreemarker/core/h0;

    move-result-object v4

    .line 71
    instance-of v7, v4, Lfreemarker/core/x3;

    if-eqz v7, :cond_18

    move-object v7, v4

    check-cast v7, Lfreemarker/core/x3;

    .line 72
    invoke-virtual {v7}, Lfreemarker/core/x3;->getAsString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_18
    move-object v7, v4

    check-cast v7, Lfreemarker/core/w0;

    .line 73
    invoke-virtual {v7}, Lfreemarker/core/w0;->d()Ljava/lang/String;

    move-result-object v7

    .line 74
    :goto_b
    iget v8, v0, Lfreemarker/core/j0;->return:I

    if-ne v8, v3, :cond_19

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_19
    if-eq v8, v14, :cond_1d

    packed-switch v8, :pswitch_data_5

    .line 75
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x35

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 76
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 77
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 78
    :pswitch_e
    iget v8, v0, Lfreemarker/core/j0;->return:I

    if-ne v8, v3, :cond_1a

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_1a
    if-eq v8, v6, :cond_1c

    if-ne v8, v13, :cond_1b

    .line 79
    invoke-direct {v0, v13}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_c

    .line 80
    :cond_1b
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x34

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 81
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 82
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 83
    :cond_1c
    invoke-direct {v0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 84
    :goto_c
    iget-object v8, v0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    move-object v5, v8

    const/4 v6, 0x0

    const/16 v9, 0x6e

    const/16 v12, 0x6d

    const/16 v15, 0x6c

    goto :goto_11

    .line 85
    :cond_1d
    :pswitch_f
    iget v8, v0, Lfreemarker/core/j0;->return:I

    if-ne v8, v3, :cond_1e

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v8

    :cond_1e
    if-eq v8, v14, :cond_1f

    packed-switch v8, :pswitch_data_6

    .line 86
    iget-object v1, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x33

    iget v4, v0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v2

    .line 87
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 88
    new-instance v1, Lfreemarker/core/h3;

    invoke-direct {v1}, Lfreemarker/core/h3;-><init>()V

    throw v1

    .line 89
    :pswitch_10
    invoke-direct {v0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/16 v8, 0x6f

    goto :goto_d

    :pswitch_11
    const/16 v8, 0x6f

    .line 90
    invoke-direct {v0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_d
    const/16 v9, 0x6e

    goto :goto_e

    :pswitch_12
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    .line 91
    invoke-direct {v0, v9}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_e
    const/16 v12, 0x6d

    goto :goto_f

    :pswitch_13
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    const/16 v12, 0x6d

    .line 92
    invoke-direct {v0, v12}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_f
    const/16 v15, 0x6c

    goto :goto_10

    :pswitch_14
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    const/16 v12, 0x6d

    const/16 v15, 0x6c

    .line 93
    invoke-direct {v0, v15}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_10

    :cond_1f
    const/16 v8, 0x6f

    const/16 v9, 0x6e

    const/16 v12, 0x6d

    const/16 v15, 0x6c

    .line 94
    invoke-direct {v0, v14}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 95
    :goto_10
    iget-object v5, v0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v16

    move-object/from16 v6, v16

    .line 97
    :goto_11
    new-instance v8, Lfreemarker/core/this;

    iget v9, v5, Lfreemarker/core/m4;->kind:I

    invoke-direct {v8, v7, v9, v6, v10}, Lfreemarker/core/this;-><init>(Ljava/lang/String;ILfreemarker/core/h0;I)V

    if-eqz v6, :cond_20

    .line 98
    iget-object v5, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v8, v5, v4, v6}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    goto :goto_12

    .line 99
    :cond_20
    iget-object v6, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v8, v6, v4, v5}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    .line 100
    :goto_12
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x70

    const/16 v6, 0x71

    goto/16 :goto_9

    .line 101
    :cond_21
    iget v4, v0, Lfreemarker/core/j0;->return:I

    if-ne v4, v3, :cond_22

    invoke-direct/range {p0 .. p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_22
    const/16 v3, 0x8b

    if-eq v4, v3, :cond_23

    .line 102
    iget-object v3, v0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x36

    iget v5, v0, Lfreemarker/core/j0;->default:I

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto :goto_13

    .line 103
    :cond_23
    invoke-direct {v0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 104
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v12

    const/4 v4, 0x1

    if-ne v10, v4, :cond_26

    .line 105
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v3

    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_24

    .line 107
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/this;

    .line 108
    invoke-virtual {v1, v12}, Lfreemarker/core/this;->u(Lfreemarker/core/h0;)V

    .line 109
    iget-object v4, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v4, v2, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    .line 110
    :cond_24
    new-instance v4, Lfreemarker/core/break;

    invoke-direct {v4, v10}, Lfreemarker/core/break;-><init>(I)V

    .line 111
    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v6, v5, :cond_25

    .line 112
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/this;

    invoke-virtual {v4, v5}, Lfreemarker/core/break;->r(Lfreemarker/core/this;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 113
    :cond_25
    invoke-virtual {v4, v12}, Lfreemarker/core/break;->s(Lfreemarker/core/h0;)V

    .line 114
    iget-object v1, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v2, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v4

    .line 115
    :cond_26
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, v0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v11, v2, v3}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    goto :goto_16

    :goto_15
    throw v1

    :goto_16
    goto :goto_15

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6c
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6c
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x6c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x6c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final g()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->R()Lfreemarker/core/h0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->y0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v3, 0x7a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x7e

    if-ne v1, v3, :cond_1

    .line 4
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x3

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v1, 0x7

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 6
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 7
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 8
    :cond_2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x2

    goto :goto_1

    .line 9
    :cond_3
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x1

    .line 10
    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->R()Lfreemarker/core/h0;

    move-result-object v2

    .line 11
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->Y2(Lfreemarker/core/h0;)V

    .line 12
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->Y2(Lfreemarker/core/h0;)V

    .line 13
    new-instance v3, Lfreemarker/core/goto;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/goto;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;I)V

    .line 14
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    move-object v0, v3

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final g0()V
    .locals 0

    return-void
.end method

.method public final goto()Lfreemarker/core/native;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x37

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->catch:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 3
    new-instance v1, Lfreemarker/core/native;

    invoke-direct {v1}, Lfreemarker/core/native;-><init>()V

    .line 4
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be nested inside a directive that supports it:  #list with \"as\", #items, #switch (or the deprecated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->i0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final h()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const/16 v1, 0x8e

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    const/16 v3, 0x69

    .line 3
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    iget-object v3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lfreemarker/core/k0;->try(I)V

    .line 5
    iget-object v3, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lfreemarker/core/k0;->class:Z

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v3

    .line 7
    iget-object v2, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_1
    if-eq v2, v1, :cond_0

    .line 9
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x4d

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    .line 10
    iget-object v1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lfreemarker/core/k0;->class:Z

    return-object v0
.end method

.method public h3(Lfreemarker/core/j0;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    iget v1, v0, Lfreemarker/core/k0;->super:I

    iput v1, p1, Lfreemarker/core/k0;->super:I

    .line 3
    iget-object v0, v0, Lfreemarker/core/k0;->throw:Lfreemarker/core/m4;

    iput-object v0, p1, Lfreemarker/core/k0;->throw:Lfreemarker/core/m4;

    return-void
.end method

.method public final i()Lfreemarker/core/b4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x41

    if-eq v0, v2, :cond_2

    const/16 v2, 0x42

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/j0;->v()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v2

    .line 5
    new-instance v3, Lfreemarker/core/super;

    invoke-direct {v3, v1}, Lfreemarker/core/super;-><init>(Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x2c

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 9
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 10
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 11
    new-instance v3, Lfreemarker/core/super;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lfreemarker/core/super;-><init>(Ljava/util/List;)V

    .line 12
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    .line 13
    :goto_0
    iget-boolean v1, p0, Lfreemarker/core/j0;->const:Z

    if-eqz v1, :cond_3

    return-object v3

    .line 14
    :cond_3
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot use a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " instruction outside a macro."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final if()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->public()Lfreemarker/core/h0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->C0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x7f

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->public()Lfreemarker/core/h0;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->a0(Lfreemarker/core/h0;)V

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->a0(Lfreemarker/core/h0;)V

    .line 7
    new-instance v2, Lfreemarker/core/case;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/case;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    .line 8
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final implements()Lfreemarker/core/w1$do;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x8e

    const/16 v3, 0x87

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->continue()Lfreemarker/core/w0;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v4

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x13

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 5
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 7
    :cond_2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 8
    iget v3, p0, Lfreemarker/core/j0;->return:I

    if-ne v3, v1, :cond_3

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_3
    if-eq v3, v2, :cond_4

    .line 9
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x12

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/j0;->continue()Lfreemarker/core/w0;

    move-result-object v2

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    iget v2, p0, Lfreemarker/core/j0;->return:I

    if-ne v2, v1, :cond_5

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_5
    const/16 v3, 0x82

    if-eq v2, v3, :cond_7

    .line 14
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x11

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    :goto_1
    const/16 v1, 0x88

    .line 15
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    .line 16
    :goto_2
    new-instance v2, Lfreemarker/core/w1$do;

    if-eqz v0, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_3
    invoke-direct {v2, v4, v0, v1}, Lfreemarker/core/w1$do;-><init>(Lfreemarker/core/m4;Ljava/util/List;Lfreemarker/core/m4;)V

    return-object v2

    .line 18
    :cond_7
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 19
    invoke-virtual {p0}, Lfreemarker/core/j0;->continue()Lfreemarker/core/w0;

    move-result-object v2

    .line 20
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final import(Lfreemarker/core/h0;)Lfreemarker/core/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x85

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v0

    const/16 v1, 0x86

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    const-string v2, "list or hash"

    .line 4
    invoke-direct {p0, p1, v2}, Lfreemarker/core/j0;->T2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, v2}, Lfreemarker/core/j0;->W2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lfreemarker/core/b0;

    invoke-direct {v2, p1, v0}, Lfreemarker/core/b0;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    .line 7
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v0, p1, v1}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    return-object v2
.end method

.method public final instanceof()Lfreemarker/core/b4;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    .line 3
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v4, 0x8c

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    .line 4
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x22

    iget v6, p0, Lfreemarker/core/j0;->default:I

    aput v6, v1, v4

    move-object v1, v5

    move-object v4, v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/16 v1, 0x8e

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v4

    .line 7
    iget v6, p0, Lfreemarker/core/j0;->return:I

    if-ne v6, v3, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v6

    :cond_2
    const/16 v7, 0x82

    if-eq v6, v7, :cond_3

    .line 8
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v6, 0x21

    iget v7, p0, Lfreemarker/core/j0;->default:I

    aput v7, v1, v6

    move-object v1, v5

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 10
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    :goto_0
    const/16 v6, 0x94

    .line 11
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 12
    invoke-direct {p0}, Lfreemarker/core/j0;->b3()Lfreemarker/core/j0$new;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    .line 13
    iget-object v8, v4, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-static {v6, v8}, Lfreemarker/core/j0$new;->if(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget v8, p0, Lfreemarker/core/j0;->catch:I

    add-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/j0;->catch:I

    .line 15
    iget v8, p0, Lfreemarker/core/j0;->class:I

    add-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/j0;->class:I

    if-eqz v1, :cond_5

    .line 16
    iget-object v8, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-static {v6, v8}, Lfreemarker/core/j0$new;->new(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-static {v6, v7}, Lfreemarker/core/j0$new;->goto(Lfreemarker/core/j0$new;Z)Z

    .line 18
    invoke-static {v6}, Lfreemarker/core/j0$new;->for(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The key and value loop variable names must differ, but both were: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v6}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 21
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v8

    if-eqz v4, :cond_6

    .line 22
    iget v9, p0, Lfreemarker/core/j0;->catch:I

    sub-int/2addr v9, v7

    iput v9, p0, Lfreemarker/core/j0;->catch:I

    .line 23
    iget v9, p0, Lfreemarker/core/j0;->class:I

    sub-int/2addr v9, v7

    iput v9, p0, Lfreemarker/core/j0;->class:I

    goto :goto_2

    .line 24
    :cond_6
    invoke-static {v6}, Lfreemarker/core/j0$new;->try(Lfreemarker/core/j0$new;)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_c

    .line 25
    :goto_2
    invoke-direct {p0}, Lfreemarker/core/j0;->a3()V

    .line 26
    iget v7, p0, Lfreemarker/core/j0;->return:I

    if-ne v7, v3, :cond_7

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v7

    :cond_7
    const/16 v3, 0x36

    if-eq v7, v3, :cond_8

    .line 27
    iget-object v3, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v7, 0x23

    iget v9, p0, Lfreemarker/core/j0;->default:I

    aput v9, v3, v7

    move-object v9, v5

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {p0}, Lfreemarker/core/j0;->native()Lfreemarker/core/c0;

    move-result-object v3

    move-object v9, v3

    :goto_3
    const/16 v3, 0x25

    .line 29
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v10

    .line 30
    new-instance v11, Lfreemarker/core/d1;

    if-eqz v4, :cond_9

    iget-object v3, v4, Lfreemarker/core/m4;->image:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v3, v5

    :goto_4
    if-eqz v1, :cond_a

    iget-object v1, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    move-object v4, v1

    goto :goto_5

    :cond_a
    move-object v4, v5

    .line 31
    :goto_5
    invoke-static {v6}, Lfreemarker/core/j0$new;->else(Lfreemarker/core/j0$new;)Z

    move-result v6

    const/4 v7, 0x0

    move-object v1, v11

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/d1;-><init>(Lfreemarker/core/h0;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/c4;ZZ)V

    .line 32
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v11, v1, v0, v10}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    if-nez v9, :cond_b

    goto :goto_6

    .line 33
    :cond_b
    new-instance v1, Lfreemarker/core/s1;

    invoke-direct {v1, v11, v9}, Lfreemarker/core/s1;-><init>(Lfreemarker/core/d1;Lfreemarker/core/c0;)V

    .line 34
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v10}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    move-object v11, v1

    :goto_6
    return-object v11

    .line 35
    :cond_c
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "#list must have either \"as loopVar\" parameter or nested #items that belongs to it."

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final interface()Lfreemarker/core/r1;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    const/16 v2, 0x8c

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/16 v2, 0x8e

    .line 4
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v3

    .line 6
    new-instance v4, Lfreemarker/core/r1;

    iget-object v5, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    iget-object v2, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v2}, Lfreemarker/core/r1;-><init>(Lfreemarker/template/static;Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    .line 8
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0, v4}, Lfreemarker/template/static;->Q0(Lfreemarker/core/r1;)V

    return-object v4
.end method

.method public final j()Lfreemarker/core/f2;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x1f

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->else:I

    const/16 v2, 0x14

    .line 3
    iput v2, p0, Lfreemarker/core/j0;->else:I

    .line 4
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v2

    const/16 v3, 0x32

    .line 6
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 7
    new-instance v4, Lfreemarker/core/f2;

    invoke-direct {v4, v2}, Lfreemarker/core/f2;-><init>(Lfreemarker/core/c4;)V

    .line 8
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v2, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    .line 9
    iput v1, p0, Lfreemarker/core/j0;->else:I

    .line 10
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    return-object v4
.end method

.method public j0()Lfreemarker/core/h3;
    .locals 8

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x9e

    new-array v1, v0, [Z

    .line 2
    iget v2, p0, Lfreemarker/core/j0;->volatile:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    .line 3
    aput-boolean v3, v1, v2

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lfreemarker/core/j0;->volatile:I

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x74

    if-ge v4, v5, :cond_7

    .line 5
    iget-object v5, p0, Lfreemarker/core/j0;->extends:[I

    aget v5, v5, v4

    iget v6, p0, Lfreemarker/core/j0;->default:I

    if-ne v5, v6, :cond_6

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x20

    if-ge v5, v6, :cond_6

    .line 6
    sget-object v6, Lfreemarker/core/j0;->a:[I

    aget v6, v6, v4

    shl-int v7, v3, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 7
    aput-boolean v3, v1, v5

    .line 8
    :cond_1
    sget-object v6, Lfreemarker/core/j0;->b:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    add-int/lit8 v6, v5, 0x20

    .line 9
    aput-boolean v3, v1, v6

    .line 10
    :cond_2
    sget-object v6, Lfreemarker/core/j0;->c:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, 0x40

    .line 11
    aput-boolean v3, v1, v6

    .line 12
    :cond_3
    sget-object v6, Lfreemarker/core/j0;->d:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    add-int/lit8 v6, v5, 0x60

    .line 13
    aput-boolean v3, v1, v6

    .line 14
    :cond_4
    sget-object v6, Lfreemarker/core/j0;->e:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    add-int/lit16 v6, v5, 0x80

    .line 15
    aput-boolean v3, v1, v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_9

    .line 16
    aget-boolean v5, v1, v4

    if-eqz v5, :cond_8

    new-array v5, v3, [I

    .line 17
    iput-object v5, p0, Lfreemarker/core/j0;->strictfp:[I

    aput v4, v5, v2

    .line 18
    iget-object v6, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 19
    :cond_9
    iput v2, p0, Lfreemarker/core/j0;->protected:I

    .line 20
    invoke-direct {p0}, Lfreemarker/core/j0;->Q2()V

    .line 21
    invoke-direct {p0, v2, v2}, Lfreemarker/core/j0;->I2(II)V

    .line 22
    iget-object v0, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 23
    :goto_3
    iget-object v1, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 24
    iget-object v1, p0, Lfreemarker/core/j0;->continue:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 25
    :cond_a
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    sget-object v3, Lfreemarker/core/FMParserConstants;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lfreemarker/core/h3;-><init>(Lfreemarker/core/m4;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public final k()Lfreemarker/core/g2;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x48

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v2

    const/16 v3, 0x49

    .line 5
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lfreemarker/core/g2;

    invoke-direct {v1, v2}, Lfreemarker/core/g2;-><init>(Lfreemarker/core/c4;)V

    .line 8
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    .line 9
    :cond_0
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "#noescape with no matching #escape encountered."

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final l()Lfreemarker/core/k4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1, v0}, Lfreemarker/core/j0;->U(Lfreemarker/core/m4;Ljava/lang/StringBuilder;)Lfreemarker/core/m4;

    move-result-object v2

    .line 4
    new-instance v3, Lfreemarker/core/k4;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lfreemarker/core/k4;-><init>(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v0, v1, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final m()Lfreemarker/core/h0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/16 v1, 0x81

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_1
    if-eq v2, v1, :cond_0

    .line 5
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v2, 0x4

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/j0;->x()Lfreemarker/core/h0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 8
    new-instance v3, Lfreemarker/core/x2;

    invoke-direct {v3, v1}, Lfreemarker/core/x2;-><init>(Lfreemarker/core/h0;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/m4;

    .line 10
    iget-object v5, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v5, v4, v1}, Lfreemarker/core/h4;->throw(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/h4;)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public m0()Lfreemarker/core/y1;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of v1, v0, Lfreemarker/core/y1;

    if-eqz v1, :cond_0

    check-cast v0, Lfreemarker/core/y1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final n()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x61

    if-eq v0, v2, :cond_2

    const/16 v2, 0x62

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0xd

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v1, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    .line 8
    new-instance v2, Lfreemarker/core/z2;

    iget-object v3, p0, Lfreemarker/core/j0;->this:Lfreemarker/core/ParserConfiguration;

    invoke-interface {v3}, Lfreemarker/core/ParserConfiguration;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfreemarker/core/else;->final(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v2, v1}, Lfreemarker/core/z2;-><init>(Ljava/lang/Number;)V

    .line 9
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v1, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v2
.end method

.method public final n0()Lfreemarker/core/m4;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    iget-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v1}, Lfreemarker/core/k0;->class()Lfreemarker/core/m4;

    move-result-object v1

    iput-object v1, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    iput-object v1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    :goto_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lfreemarker/core/j0;->return:I

    .line 4
    iget v0, p0, Lfreemarker/core/j0;->default:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/j0;->default:I

    .line 5
    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    return-object v0
.end method

.method public final native()Lfreemarker/core/c0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x36

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v1

    .line 3
    new-instance v2, Lfreemarker/core/c0;

    invoke-direct {v2, v1}, Lfreemarker/core/c0;-><init>(Lfreemarker/core/c4;)V

    .line 4
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v3, v0, v0, v1}, Lfreemarker/core/h4;->import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V

    return-object v2
.end method

.method public final new()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x85

    if-eq v0, v2, :cond_4

    const/16 v2, 0x87

    if-eq v0, v2, :cond_3

    const/16 v2, 0x89

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8e

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v2, 0x2

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->break()Lfreemarker/core/k;

    move-result-object v0

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->n()Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->else()Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->M(Z)Lfreemarker/core/x3;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->continue()Lfreemarker/core/w0;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->private()Lfreemarker/core/r0;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->u()Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/j0;->synchronized()Lfreemarker/core/t1;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o()Lfreemarker/core/a3;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x53

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->Y2(Lfreemarker/core/h0;)V

    .line 4
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/16 v4, 0x83

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    .line 5
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x1d

    iget v6, p0, Lfreemarker/core/j0;->default:I

    aput v6, v2, v4

    move-object v2, v5

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/16 v2, 0x8e

    .line 7
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    :goto_0
    const/16 v4, 0x8a

    .line 8
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v4

    .line 9
    iget-boolean v6, p0, Lfreemarker/core/j0;->goto:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of v7, v6, Lfreemarker/core/y1;

    if-eqz v7, :cond_2

    move-object v5, v6

    check-cast v5, Lfreemarker/core/y1;

    :cond_2
    if-eqz v2, :cond_10

    .line 10
    new-instance v6, Ljava/util/StringTokenizer;

    iget-object v7, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "mM"

    invoke-direct {v6, v7, v9, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x2d

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_1
    const/16 v10, 0x2d

    .line 11
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 12
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6d

    const/16 v13, 0x4d

    if-eq v10, v7, :cond_7

    const-string v14, "Invalid formatting string"

    if-eq v10, v13, :cond_5

    if-ne v10, v12, :cond_4

    if-ne v9, v3, :cond_3

    .line 13
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Lfreemarker/core/h3;

    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v14, v1, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    .line 15
    :cond_4
    new-instance v0, Lfreemarker/core/h3;

    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v14, v1, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    :cond_5
    if-ne v8, v3, :cond_6

    .line 16
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 17
    :cond_6
    new-instance v0, Lfreemarker/core/h3;

    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v14, v1, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    :cond_7
    const-string v10, "m"

    .line 18
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x6d

    goto :goto_2

    :cond_8
    const-string v10, "M"

    .line 19
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x4d

    goto :goto_2

    .line 20
    :cond_9
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0
    :try_end_0
    .catch Lfreemarker/core/h3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number in the format specifier "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    .line 22
    :catch_1
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format specifier "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    :cond_a
    if-ne v8, v3, :cond_c

    if-eq v9, v3, :cond_b

    move v8, v9

    goto :goto_3

    .line 23
    :cond_b
    new-instance v0, Lfreemarker/core/h3;

    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Invalid format specification, at least one of m and M must be specified!"

    invoke-direct {v0, v3, v1, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    :cond_c
    if-ne v9, v3, :cond_d

    const/4 v9, 0x0

    :cond_d
    :goto_3
    if-gt v9, v8, :cond_f

    const/16 v3, 0x32

    if-gt v9, v3, :cond_e

    if-gt v8, v3, :cond_e

    .line 24
    new-instance v2, Lfreemarker/core/a3;

    invoke-direct {v2, v1, v9, v8, v5}, Lfreemarker/core/a3;-><init>(Lfreemarker/core/h0;IILfreemarker/core/y1;)V

    goto :goto_4

    .line 25
    :cond_e
    new-instance v0, Lfreemarker/core/h3;

    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Cannot specify more than 50 fraction digits"

    invoke-direct {v0, v3, v1, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    .line 26
    :cond_f
    new-instance v0, Lfreemarker/core/h3;

    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Invalid format specification, min cannot be greater than max!"

    invoke-direct {v0, v3, v1, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    .line 27
    :cond_10
    new-instance v2, Lfreemarker/core/a3;

    invoke-direct {v2, v1, v5}, Lfreemarker/core/a3;-><init>(Lfreemarker/core/h0;Lfreemarker/core/y1;)V

    .line 28
    :goto_4
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v1, v0, v4}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v2
.end method

.method public final o0(I)Lfreemarker/core/m4;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2
    iget-object v2, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v2}, Lfreemarker/core/k0;->class()Lfreemarker/core/m4;

    move-result-object v2

    iput-object v2, v0, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    :goto_1
    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final p()Lfreemarker/core/b4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x67

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->e()Lfreemarker/core/c2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v0, Lfreemarker/core/k4;

    sget-object v1, Landroid/support/v4/vm;->for:[C

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/core/k4;-><init>([CZ)V

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final package()Lfreemarker/core/b4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x48

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 2
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x5e

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->return()Lfreemarker/core/e0;

    move-result-object v0

    goto/16 :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->throws()Lfreemarker/core/l0;

    move-result-object v0

    goto/16 :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->E()Lfreemarker/core/n3;

    move-result-object v0

    goto/16 :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->i()Lfreemarker/core/b4;

    move-result-object v0

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p0}, Lfreemarker/core/j0;->Q()Lfreemarker/core/b4;

    move-result-object v0

    goto/16 :goto_0

    .line 10
    :pswitch_5
    invoke-virtual {p0}, Lfreemarker/core/j0;->default()Lfreemarker/core/b4;

    move-result-object v0

    goto/16 :goto_0

    .line 11
    :pswitch_6
    invoke-virtual {p0}, Lfreemarker/core/j0;->super()Lfreemarker/core/u;

    move-result-object v0

    goto/16 :goto_0

    .line 12
    :pswitch_7
    invoke-virtual {p0}, Lfreemarker/core/j0;->goto()Lfreemarker/core/native;

    move-result-object v0

    goto/16 :goto_0

    .line 13
    :pswitch_8
    invoke-virtual {p0}, Lfreemarker/core/j0;->l()Lfreemarker/core/k4;

    move-result-object v0

    goto/16 :goto_0

    .line 14
    :pswitch_9
    invoke-virtual {p0}, Lfreemarker/core/j0;->const()Lfreemarker/core/o;

    move-result-object v0

    goto/16 :goto_0

    .line 15
    :pswitch_a
    invoke-virtual {p0}, Lfreemarker/core/j0;->final()Lfreemarker/core/r;

    move-result-object v0

    goto/16 :goto_0

    .line 16
    :pswitch_b
    invoke-virtual {p0}, Lfreemarker/core/j0;->j()Lfreemarker/core/f2;

    move-result-object v0

    goto/16 :goto_0

    .line 17
    :pswitch_c
    invoke-virtual {p0}, Lfreemarker/core/j0;->case()Lfreemarker/core/class;

    move-result-object v0

    goto/16 :goto_0

    .line 18
    :pswitch_d
    invoke-virtual {p0}, Lfreemarker/core/j0;->r()Lfreemarker/core/d3;

    move-result-object v0

    goto/16 :goto_0

    .line 19
    :pswitch_e
    invoke-virtual {p0}, Lfreemarker/core/j0;->J()Lfreemarker/core/i3;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_f
    invoke-virtual {p0}, Lfreemarker/core/j0;->catch()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_10
    invoke-virtual {p0}, Lfreemarker/core/j0;->G()Lfreemarker/core/p3;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_11
    invoke-virtual {p0}, Lfreemarker/core/j0;->L()Lfreemarker/core/w3;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_12
    invoke-virtual {p0}, Lfreemarker/core/j0;->V()Lfreemarker/core/t4;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_13
    invoke-virtual {p0}, Lfreemarker/core/j0;->P()Lfreemarker/core/n4;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_14
    invoke-virtual {p0}, Lfreemarker/core/j0;->c()Lfreemarker/core/x1;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_15
    invoke-virtual {p0}, Lfreemarker/core/j0;->interface()Lfreemarker/core/r1;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_16
    invoke-virtual {p0}, Lfreemarker/core/j0;->protected()Lfreemarker/core/y0;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_17
    invoke-virtual {p0}, Lfreemarker/core/j0;->for()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_18
    invoke-virtual {p0}, Lfreemarker/core/j0;->O()Lfreemarker/core/y3;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_19
    invoke-virtual {p0}, Lfreemarker/core/j0;->extends()Lfreemarker/core/d1;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_1a
    invoke-virtual {p0}, Lfreemarker/core/j0;->I()Lfreemarker/core/r3;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_1b
    invoke-virtual {p0}, Lfreemarker/core/j0;->transient()Lfreemarker/core/c1;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_1c
    invoke-virtual {p0}, Lfreemarker/core/j0;->instanceof()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/j0;->T()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->k()Lfreemarker/core/g2;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->volatile()Lfreemarker/core/b4;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/j0;->try()Lfreemarker/core/catch;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_7
        :pswitch_6
        :pswitch_10
        :pswitch_11
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final private()Lfreemarker/core/r0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x89

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 4
    iget v4, p0, Lfreemarker/core/j0;->return:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_0
    const/16 v6, 0x78

    if-eq v4, v6, :cond_1

    const/16 v6, 0x79

    if-eq v4, v6, :cond_1

    const/16 v6, 0x81

    if-eq v4, v6, :cond_1

    const/16 v6, 0x85

    if-eq v4, v6, :cond_1

    const/16 v6, 0x87

    if-eq v4, v6, :cond_1

    if-eq v4, v2, :cond_1

    const/16 v2, 0x8e

    if-eq v4, v2, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 5
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x1b

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v2, v4

    goto :goto_2

    .line 6
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    .line 7
    iget v4, p0, Lfreemarker/core/j0;->return:I

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_2
    const/16 v6, 0x84

    const/16 v7, 0x82

    if-eq v4, v7, :cond_4

    if-ne v4, v6, :cond_3

    .line 8
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x18

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 10
    invoke-direct {p0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 11
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 12
    :cond_4
    invoke-direct {p0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 13
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v4

    .line 14
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->g3(Lfreemarker/core/h0;)V

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_1
    iget v2, p0, Lfreemarker/core/j0;->return:I

    if-ne v2, v5, :cond_5

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_5
    if-eq v2, v7, :cond_6

    .line 18
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x19

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v2, v4

    :goto_2
    const/16 v2, 0x8a

    .line 19
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 20
    new-instance v4, Lfreemarker/core/r0;

    invoke-direct {v4, v0, v1}, Lfreemarker/core/r0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 21
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v0, v3, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v4

    .line 22
    :cond_6
    invoke-direct {p0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 23
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    .line 24
    iget v4, p0, Lfreemarker/core/j0;->return:I

    if-ne v4, v5, :cond_7

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_7
    if-eq v4, v7, :cond_9

    if-ne v4, v6, :cond_8

    .line 25
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    goto :goto_3

    .line 26
    :cond_8
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x1a

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 27
    invoke-direct {p0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 28
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 29
    :cond_9
    invoke-direct {p0, v7}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 30
    :goto_3
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v4

    .line 31
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->g3(Lfreemarker/core/h0;)V

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final protected()Lfreemarker/core/y0;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x13

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v3

    .line 3
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v4, 0x83

    if-eq v1, v4, :cond_1

    .line 4
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x3a

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v1, v4

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    :goto_0
    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    .line 6
    :goto_1
    iget v7, p0, Lfreemarker/core/j0;->return:I

    if-ne v7, v2, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v7

    :cond_2
    const/16 v8, 0x8e

    if-eq v7, v8, :cond_3

    .line 7
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x3b

    iget v7, p0, Lfreemarker/core/j0;->default:I

    aput v7, v1, v2

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v7

    .line 9
    new-instance v8, Lfreemarker/core/y0;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/y0;-><init>(Lfreemarker/template/static;Lfreemarker/core/h0;Lfreemarker/core/h0;Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    .line 10
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v8, v1, v0, v7}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v8

    .line 11
    :cond_3
    invoke-direct {p0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v7

    const/16 v8, 0x69

    .line 12
    invoke-direct {p0, v8}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 13
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v8

    .line 14
    iget-object v9, v7, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const-string v10, "parse"

    .line 15
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v5, v8

    goto :goto_1

    :cond_4
    const-string v10, "encoding"

    .line 16
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v4, v8

    goto :goto_1

    :cond_5
    const-string v6, "ignore_missing"

    .line 17
    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "ignoreMissing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v1, v6

    .line 19
    :cond_7
    new-instance v0, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported named #include parameter: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\". Supported parameters are: \"parse\", \"encoding\", \"ignore_missing\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_2

    :cond_8
    const-string v1, " Supporting camelCase parameter names is planned for FreeMarker 2.4.0; check if an update is available, and if it indeed supports camel case."

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v1, v2, v7}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    .line 20
    :cond_9
    :goto_3
    iget-object v6, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v6, v7}, Lfreemarker/core/k0;->else(Lfreemarker/core/m4;)V

    move-object v6, v8

    goto/16 :goto_1
.end method

.method public final public()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->F()Lfreemarker/core/h0;

    move-result-object v0

    const v1, 0x7fffffff

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->z0(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 4
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x8

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 5
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    :pswitch_0
    const/16 v1, 0x6b

    .line 7
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x6a

    .line 8
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x69

    .line 9
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->F()Lfreemarker/core/h0;

    move-result-object v2

    const-string v3, "string"

    .line 11
    invoke-direct {p0, v0, v3}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v2, v3}, Lfreemarker/core/j0;->U2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, v0, v3}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, v2, v3}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 15
    new-instance v3, Lfreemarker/core/q;

    iget-object v1, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Lfreemarker/core/q;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    move-object v0, v3

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->if()Lfreemarker/core/h0;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->D0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->if()Lfreemarker/core/h0;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->a0(Lfreemarker/core/h0;)V

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->a0(Lfreemarker/core/h0;)V

    .line 7
    new-instance v2, Lfreemarker/core/c3;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/c3;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    .line 8
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v2, v3, v0, v1}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final r()Lfreemarker/core/d3;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const-string v0, "\nUnderlying cause: "

    const-string v1, "Could not evaluate expression (on parse-time): "

    const/16 v2, 0x1d

    .line 1
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v3

    const/16 v4, 0x94

    .line 3
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    invoke-virtual {v3}, Lfreemarker/core/h0;->instanceof()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v3, v4}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 6
    instance-of v5, v4, Lfreemarker/template/TemplateScalarModel;

    if-eqz v5, :cond_4

    .line 7
    :try_start_1
    check-cast v4, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v4}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/support/v4/k52; {:try_start_1 .. :try_end_1} :catch_2

    .line 8
    iget-object v1, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    :try_start_2
    const-string v4, "{"

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "}"

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    iget-object v4, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v4

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v4, v0}, Lfreemarker/template/do;->D1(Ljava/lang/String;)Landroid/support/v4/e91;

    move-result-object v0

    .line 14
    instance-of v4, v0, Lfreemarker/core/y1;

    if-eqz v4, :cond_1

    .line 15
    iget-object v4, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of v5, v4, Lfreemarker/core/y1;

    if-eqz v5, :cond_0

    .line 16
    new-instance v5, Lfreemarker/core/n;

    check-cast v4, Lfreemarker/core/y1;

    check-cast v0, Lfreemarker/core/y1;

    invoke-direct {v5, v4, v0}, Lfreemarker/core/n;-><init>(Lfreemarker/core/y1;Lfreemarker/core/y1;)V

    iput-object v5, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current output format must be a markup format when using {...}, but was: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v0, v1, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v0

    .line 18
    :cond_1
    new-instance v1, Lfreemarker/core/h3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The output format inside the {...} must be a markup format, but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v0, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 19
    :cond_2
    new-instance v1, Lfreemarker/core/h3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output format name that starts with \'{\' must end with \'}\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v0, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 20
    :cond_3
    iget-object v4, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v4

    invoke-virtual {v4, v0}, Lfreemarker/template/do;->D1(Ljava/lang/String;)Landroid/support/v4/e91;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    .line 21
    :goto_0
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/support/v4/jc2; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v0

    const/16 v4, 0x30

    .line 23
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v4

    .line 24
    new-instance v5, Lfreemarker/core/d3;

    invoke-direct {v5, v0, v3}, Lfreemarker/core/d3;-><init>(Lfreemarker/core/c4;Lfreemarker/core/h0;)V

    .line 25
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v5, v0, v2, v4}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    .line 26
    iput-object v1, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    .line 27
    invoke-direct {p0}, Lfreemarker/core/j0;->d3()V

    return-object v5

    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Lfreemarker/core/h3;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v3, v4, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 29
    new-instance v1, Lfreemarker/core/h3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v3, v4, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v2

    .line 30
    new-instance v4, Lfreemarker/core/h3;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    throw v4

    .line 32
    :cond_4
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter must be a string, but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v4}, Lfreemarker/template/utility/if;->case(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0

    :catch_3
    move-exception v2

    .line 34
    new-instance v4, Lfreemarker/core/h3;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3, v2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;Ljava/lang/Throwable;)V

    throw v4

    .line 36
    :cond_5
    new-instance v0, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter expression must be parse-time evaluable (constant): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v0
.end method

.method public final return()Lfreemarker/core/e0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x46

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of v1, v1, Lfreemarker/core/y1;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lfreemarker/core/j0;->goto:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using the \"escape\" directive (legacy escaping) is not allowed when auto-escaping is on with a markup output format ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    .line 4
    invoke-virtual {v3}, Landroid/support/v4/e91;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), to avoid confusion and double-escaping mistakes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    :cond_1
    :goto_0
    const/16 v1, 0x8e

    .line 5
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    const/16 v2, 0x8c

    .line 6
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    const/16 v3, 0x94

    .line 8
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 9
    new-instance v3, Lfreemarker/core/e0;

    iget-object v1, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {p0, v2}, Lfreemarker/core/j0;->h0(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lfreemarker/core/e0;-><init>(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    .line 10
    iget-object v1, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v1

    .line 12
    invoke-virtual {v3, v1}, Lfreemarker/core/e0;->s(Lfreemarker/core/c4;)V

    .line 13
    iget-object v1, p0, Lfreemarker/core/j0;->super:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    const/16 v1, 0x47

    .line 14
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v2, v0, v1}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final s()Lfreemarker/core/k4;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 2
    :goto_0
    iget v4, p0, Lfreemarker/core/j0;->return:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v4

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x5f

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 4
    invoke-direct {p0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    :pswitch_0
    const/16 v4, 0x51

    .line 6
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    const/16 v4, 0x50

    .line 7
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v4

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x4f

    .line 8
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v4

    .line 9
    :goto_1
    iget-object v6, v4, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    move-object v2, v4

    :cond_1
    if-eqz v3, :cond_2

    .line 10
    iput-object v1, v3, Lfreemarker/core/m4;->next:Lfreemarker/core/m4;

    .line 11
    :cond_2
    iget v3, p0, Lfreemarker/core/j0;->return:I

    if-ne v3, v5, :cond_3

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_3
    packed-switch v3, :pswitch_data_1

    .line 12
    iget-object v3, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v5, 0x60

    iget v6, p0, Lfreemarker/core/j0;->default:I

    aput v6, v3, v5

    goto :goto_2

    :pswitch_3
    move-object v3, v4

    goto :goto_0

    .line 13
    :goto_2
    iget-boolean v3, p0, Lfreemarker/core/j0;->for:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lfreemarker/core/j0;->throw:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    iget-boolean v3, p0, Lfreemarker/core/j0;->new:Z

    if-nez v3, :cond_4

    return-object v1

    .line 14
    :cond_4
    new-instance v1, Lfreemarker/core/k4;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lfreemarker/core/k4;-><init>(Ljava/lang/String;Z)V

    .line 15
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v0, v2, v4}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final static(Lfreemarker/core/h0;)Lfreemarker/core/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x68

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    new-instance v1, Lfreemarker/core/g0;

    invoke-direct {v1, p1}, Lfreemarker/core/g0;-><init>(Lfreemarker/core/h0;)V

    .line 3
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, p1, v0}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    return-object v1
.end method

.method public final strictfp()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8e

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->continue()Lfreemarker/core/w0;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0xe

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v2

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->M(Z)Lfreemarker/core/x3;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final super()Lfreemarker/core/u;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x38

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->class:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 3
    new-instance v1, Lfreemarker/core/u;

    invoke-direct {v1}, Lfreemarker/core/u;-><init>()V

    .line 4
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be nested inside a directive that supports it:  #list with \"as\", #items (or the deprecated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {p0}, Lfreemarker/core/j0;->i0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final switch()Lfreemarker/core/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->q()Lfreemarker/core/h0;

    move-result-object v0

    return-object v0
.end method

.method public final synchronized()Lfreemarker/core/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x85

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/j0;->v()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x86

    .line 4
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 5
    new-instance v3, Lfreemarker/core/t1;

    invoke-direct {v3, v1}, Lfreemarker/core/t1;-><init>(Ljava/util/ArrayList;)V

    .line 6
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final t()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->continue()Lfreemarker/core/w0;

    move-result-object v1

    const/16 v2, 0x69

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lfreemarker/core/h4;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_1
    const/16 v3, 0x82

    if-eq v1, v3, :cond_2

    .line 7
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v3, 0x6f

    iget v4, p0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v3

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 9
    :goto_0
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_3
    const/16 v2, 0x8e

    if-eq v1, v2, :cond_0

    .line 10
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x70

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    return-object v0
.end method

.method public final this(Lfreemarker/core/h0;)Lfreemarker/core/h0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x67

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/16 v0, 0x8e

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-virtual {v1, v0}, Lfreemarker/core/k0;->else(Lfreemarker/core/m4;)V

    .line 4
    iget v1, p0, Lfreemarker/core/j0;->try:I

    iget-object v2, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    invoke-static {v1, p1, v0, v2}, Lfreemarker/core/return;->l(ILfreemarker/core/h0;Lfreemarker/core/m4;Lfreemarker/core/k0;)Lfreemarker/core/return;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, p1, v0}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    .line 6
    instance-of v2, v1, Lfreemarker/core/v3;

    if-nez v2, :cond_0

    return-object v1

    .line 7
    :cond_0
    instance-of v2, v1, Lfreemarker/core/extends;

    if-eqz v2, :cond_2

    .line 8
    instance-of v2, p1, Lfreemarker/core/w0;

    if-eqz v2, :cond_1

    .line 9
    move-object v2, p1

    check-cast v2, Lfreemarker/core/w0;

    invoke-virtual {v2}, Lfreemarker/core/w0;->d()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-direct {p0, v2, p1, v0}, Lfreemarker/core/j0;->c0(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/m4;)V

    .line 11
    move-object p1, v1

    check-cast p1, Lfreemarker/core/extends;

    invoke-virtual {p1, v2}, Lfreemarker/core/extends;->r(Ljava/lang/String;)V

    return-object v1

    .line 12
    :cond_1
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expression used as the left hand operand of ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be a simple loop variable name."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v1

    .line 13
    :cond_2
    instance-of v2, v1, Lfreemarker/core/static;

    if-eqz v2, :cond_5

    .line 14
    iget-object p1, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of p1, p1, Lfreemarker/core/y1;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lfreemarker/core/j0;->goto:Z

    if-nez p1, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    new-instance p1, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (legacy escaping) is not allowed when auto-escaping is on with a markup output format ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    .line 16
    invoke-virtual {v2}, Landroid/support/v4/e91;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), to avoid double-escaping mistakes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {p1, v1, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw p1

    :cond_4
    :goto_0
    return-object v1

    .line 17
    :cond_5
    instance-of v2, v1, Lfreemarker/core/z1;

    if-eqz v2, :cond_7

    .line 18
    iget-object p1, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    instance-of v2, p1, Lfreemarker/core/y1;

    if-eqz v2, :cond_6

    .line 19
    move-object v0, v1

    check-cast v0, Lfreemarker/core/z1;

    check-cast p1, Lfreemarker/core/y1;

    invoke-virtual {v0, p1}, Lfreemarker/core/z1;->r(Lfreemarker/core/y1;)V

    return-object v1

    .line 20
    :cond_6
    new-instance p1, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be used here, as the current output format isn\'t a markup (escaping) format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {p1, v1, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw p1

    .line 21
    :cond_7
    instance-of v0, v1, Lfreemarker/core/e3;

    if-eqz v0, :cond_8

    .line 22
    move-object p1, v1

    check-cast p1, Lfreemarker/core/e3;

    iget-object v0, p0, Lfreemarker/core/j0;->case:Landroid/support/v4/e91;

    iget v2, p0, Lfreemarker/core/j0;->else:I

    invoke-virtual {p1, v0, v2}, Lfreemarker/core/e3;->r(Landroid/support/v4/e91;I)V

    return-object v1

    .line 23
    :cond_8
    instance-of v0, v1, Lfreemarker/core/interface;

    const/16 v2, 0x88

    const/16 v3, 0x87

    if-eqz v0, :cond_9

    move-object v4, v1

    check-cast v4, Lfreemarker/core/interface;

    .line 24
    invoke-virtual {v4}, Lfreemarker/core/interface;->x()Z

    move-result v5

    if-nez v5, :cond_9

    .line 25
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lfreemarker/core/j0;->v()Ljava/util/ArrayList;

    move-result-object v3

    .line 27
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 28
    iget-object v5, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v5, p1, v2}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    .line 29
    invoke-virtual {v4, v3, v0, v2}, Lfreemarker/core/interface;->r(Ljava/util/List;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    :cond_9
    if-eqz v0, :cond_a

    .line 30
    move-object v0, v1

    check-cast v0, Lfreemarker/core/interface;

    .line 31
    invoke-virtual {v0}, Lfreemarker/core/interface;->x()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 32
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lfreemarker/core/j0;->w()Ljava/util/ArrayList;

    move-result-object v4

    .line 34
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 35
    iget-object v5, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v5, p1, v2}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    .line 36
    invoke-virtual {v0, v4, v3, v2}, Lfreemarker/core/interface;->r(Ljava/util/List;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    :cond_a
    const p1, 0x7fffffff

    .line 37
    invoke-direct {p0, p1}, Lfreemarker/core/j0;->F0(I)Z

    move-result p1

    if-eqz p1, :cond_b

    instance-of p1, v1, Lfreemarker/core/volatile;

    if-eqz p1, :cond_b

    .line 38
    invoke-virtual {p0, v1}, Lfreemarker/core/j0;->d(Lfreemarker/core/h0;)Lfreemarker/core/a2;

    move-result-object p1

    .line 39
    check-cast v1, Lfreemarker/core/volatile;

    invoke-virtual {v1}, Lfreemarker/core/volatile;->r()V

    return-object p1

    .line 40
    :cond_b
    instance-of p1, v1, Lfreemarker/core/volatile;

    if-eqz p1, :cond_c

    return-object v1

    .line 41
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lfreemarker/core/v3;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subclass: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final throw(Lfreemarker/core/h0;)Lfreemarker/core/h0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x81

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/16 v2, 0x99

    if-ne v0, v2, :cond_1

    .line 2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v0, 0xf

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, p1, v0

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance p1, Lfreemarker/core/h3;

    invoke-direct {p1}, Lfreemarker/core/h3;-><init>()V

    throw p1

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const v1, 0x7fffffff

    .line 7
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->E0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v3

    .line 9
    :cond_3
    :goto_0
    new-instance v1, Lfreemarker/core/x;

    invoke-direct {v1, p1, v3}, Lfreemarker/core/x;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    if-nez v3, :cond_4

    .line 10
    iget-object v5, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    iget v6, p1, Lfreemarker/core/h4;->if:I

    iget v7, p1, Lfreemarker/core/h4;->for:I

    iget v8, v0, Lfreemarker/core/m4;->beginColumn:I

    iget v9, v0, Lfreemarker/core/m4;->beginLine:I

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lfreemarker/core/h0;->const(Lfreemarker/template/static;IIII)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v0, p1, v3}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    :goto_1
    return-object v1
.end method

.method public final throws()Lfreemarker/core/l0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x45

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lfreemarker/core/j0;->const:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lfreemarker/core/l0;

    invoke-direct {v1}, Lfreemarker/core/l0;-><init>()V

    .line 4
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, v0, v0}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "Cannot fall back outside a macro."

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final transient()Lfreemarker/core/c1;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    const/16 v1, 0x8e

    .line 2
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 3
    iget v3, p0, Lfreemarker/core/j0;->return:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_0
    const/16 v4, 0x82

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    .line 4
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v3, 0x24

    iget v4, p0, Lfreemarker/core/j0;->default:I

    aput v4, v1, v3

    move-object v1, v5

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    :goto_0
    const/16 v3, 0x94

    .line 7
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 8
    invoke-direct {p0}, Lfreemarker/core/j0;->Z2()Lfreemarker/core/j0$new;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 9
    invoke-static {v3}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    .line 10
    invoke-static {v3}, Lfreemarker/core/j0$new;->try(Lfreemarker/core/j0$new;)I

    move-result v1

    if-eq v1, v7, :cond_3

    .line 11
    invoke-static {v3}, Lfreemarker/core/j0$new;->try(Lfreemarker/core/j0$new;)I

    move-result v1

    if-ne v1, v6, :cond_2

    const-string v1, "Can\'t nest #items into each other when they belong to the same #list."

    goto :goto_1

    :cond_2
    const-string v1, "The parent #list of the #items must not have \"as loopVar\" parameter."

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lfreemarker/core/j0;->i0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support nested #items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_1
    new-instance v2, Lfreemarker/core/h3;

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v2, v1, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v2

    .line 14
    :cond_4
    invoke-static {v3, v6}, Lfreemarker/core/j0$new;->case(Lfreemarker/core/j0$new;I)I

    .line 15
    iget-object v4, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-static {v3, v4}, Lfreemarker/core/j0$new;->if(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 16
    iget-object v4, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-static {v3, v4}, Lfreemarker/core/j0$new;->new(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-static {v3, v7}, Lfreemarker/core/j0$new;->goto(Lfreemarker/core/j0$new;Z)Z

    .line 18
    invoke-static {v3}, Lfreemarker/core/j0$new;->for(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The key and value loop variable names must differ, but both were: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v3}, Lfreemarker/core/j0$new;->do(Lfreemarker/core/j0$new;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {v1, v2, v3, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1

    .line 21
    :cond_6
    :goto_2
    iget v4, p0, Lfreemarker/core/j0;->catch:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/j0;->catch:I

    .line 22
    iget v4, p0, Lfreemarker/core/j0;->class:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/j0;->class:I

    .line 23
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v4

    const/16 v6, 0x26

    .line 24
    invoke-direct {p0, v6}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v6

    .line 25
    iget v8, p0, Lfreemarker/core/j0;->catch:I

    sub-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/j0;->catch:I

    .line 26
    iget v8, p0, Lfreemarker/core/j0;->class:I

    sub-int/2addr v8, v7

    iput v8, p0, Lfreemarker/core/j0;->class:I

    .line 27
    invoke-static {v3, v5}, Lfreemarker/core/j0$new;->if(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    invoke-static {v3, v5}, Lfreemarker/core/j0$new;->new(Lfreemarker/core/j0$new;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    new-instance v3, Lfreemarker/core/c1;

    iget-object v2, v2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v5, v1, Lfreemarker/core/m4;->image:Ljava/lang/String;

    :cond_7
    invoke-direct {v3, v2, v5, v4}, Lfreemarker/core/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/c4;)V

    .line 30
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v6}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3

    .line 31
    :cond_8
    new-instance v1, Lfreemarker/core/h3;

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    const-string v3, "#items must be inside a #list block."

    invoke-direct {v1, v3, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw v1
.end method

.method public final try()Lfreemarker/core/catch;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/j0;->D()Lfreemarker/core/m3;

    move-result-object v2

    .line 4
    iget v3, p0, Lfreemarker/core/j0;->return:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v3

    :cond_0
    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v5, 0x29

    if-ne v3, v5, :cond_1

    .line 5
    invoke-direct {p0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0x20

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, v0, v1

    .line 7
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 8
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 9
    :cond_2
    invoke-direct {p0, v5}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v3

    .line 10
    :goto_0
    new-instance v4, Lfreemarker/core/catch;

    invoke-direct {v4, v1, v2}, Lfreemarker/core/catch;-><init>(Lfreemarker/core/c4;Lfreemarker/core/m3;)V

    .line 11
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v4
.end method

.method public final u()Lfreemarker/core/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x87

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    const/16 v2, 0x88

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 4
    new-instance v3, Lfreemarker/core/g3;

    invoke-direct {v3, v1}, Lfreemarker/core/g3;-><init>(Lfreemarker/core/h0;)V

    .line 5
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v3, v1, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v3
.end method

.method public final v()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v3, 0x8e

    const/16 v4, 0x89

    const/16 v5, 0x87

    const/16 v6, 0x85

    const/16 v7, 0x81

    const/16 v8, 0x79

    const/16 v9, 0x78

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 3
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x50

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    goto :goto_1

    .line 4
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_2
    const/16 v10, 0x82

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v10, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_1

    .line 7
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x4e

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    :goto_1
    return-object v0

    .line 8
    :cond_3
    :pswitch_1
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_4
    if-eq v1, v10, :cond_5

    .line 9
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v10, 0x4f

    iget v11, p0, Lfreemarker/core/j0;->default:I

    aput v11, v1, v10

    goto :goto_2

    .line 10
    :cond_5
    invoke-direct {p0, v10}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 11
    :goto_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final volatile()Lfreemarker/core/b4;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v1

    const/16 v2, 0x94

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v3

    .line 5
    new-instance v4, Lfreemarker/core/s;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lfreemarker/core/s;-><init>(Lfreemarker/core/h0;Lfreemarker/core/c4;I)V

    .line 6
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v2, v3}, Lfreemarker/core/h4;->import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V

    .line 7
    new-instance v1, Lfreemarker/core/x0;

    invoke-direct {v1, v4}, Lfreemarker/core/x0;-><init>(Lfreemarker/core/s;)V

    .line 8
    :goto_0
    iget v2, p0, Lfreemarker/core/j0;->return:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_0
    const/16 v4, 0x9

    if-eq v2, v4, :cond_3

    .line 9
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v4, 0x1e

    iget v5, p0, Lfreemarker/core/j0;->default:I

    aput v5, v2, v4

    .line 10
    iget v2, p0, Lfreemarker/core/j0;->return:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v2

    :cond_1
    const/16 v3, 0x36

    if-eq v2, v3, :cond_2

    .line 11
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v3, 0x1f

    iget v4, p0, Lfreemarker/core/j0;->default:I

    aput v4, v2, v3

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v3

    .line 14
    new-instance v4, Lfreemarker/core/s;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v6}, Lfreemarker/core/s;-><init>(Lfreemarker/core/h0;Lfreemarker/core/c4;I)V

    .line 15
    iget-object v5, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v5, v2, v2, v3}, Lfreemarker/core/h4;->import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V

    .line 16
    invoke-virtual {v1, v4}, Lfreemarker/core/x0;->r(Lfreemarker/core/s;)V

    :goto_1
    const/16 v2, 0x24

    .line 17
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v3, v0, v2}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    return-object v1

    .line 19
    :cond_3
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v3

    .line 21
    invoke-virtual {p0}, Lfreemarker/core/j0;->b()Lfreemarker/core/m4;

    move-result-object v4

    .line 22
    invoke-virtual {p0}, Lfreemarker/core/j0;->f()Lfreemarker/core/c4;

    move-result-object v5

    .line 23
    new-instance v6, Lfreemarker/core/s;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v5, v7}, Lfreemarker/core/s;-><init>(Lfreemarker/core/h0;Lfreemarker/core/c4;I)V

    .line 24
    iget-object v3, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v6, v3, v2, v4, v5}, Lfreemarker/core/h4;->import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V

    .line 25
    invoke-virtual {v1, v6}, Lfreemarker/core/x0;->r(Lfreemarker/core/s;)V

    goto :goto_0
.end method

.method public final w()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v3, 0x8e

    const/16 v4, 0x89

    const/16 v5, 0x87

    const/16 v6, 0x85

    const/16 v7, 0x81

    const/16 v8, 0x79

    const/16 v9, 0x78

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 3
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x53

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    goto :goto_1

    .line 4
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->a()Lfreemarker/core/h0;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_2
    const/16 v10, 0x82

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v10, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_1

    .line 7
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0x51

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    :goto_1
    return-object v0

    .line 8
    :cond_3
    :pswitch_1
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_4
    if-eq v1, v10, :cond_5

    .line 9
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v10, 0x52

    iget v11, p0, Lfreemarker/core/j0;->default:I

    aput v11, v1, v10

    goto :goto_2

    .line 10
    :cond_5
    invoke-direct {p0, v10}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 11
    :goto_2
    invoke-virtual {p0}, Lfreemarker/core/j0;->a()Lfreemarker/core/h0;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final while(Lfreemarker/core/h0;)Lfreemarker/core/h0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    const/16 v0, 0x63

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 2
    iget v0, p0, Lfreemarker/core/j0;->return:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_0
    const/16 v2, 0x60

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const/16 v4, 0x7a

    if-eq v0, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 3
    iget-object p1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v0, 0x15

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, p1, v0

    .line 4
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 5
    new-instance p1, Lfreemarker/core/h3;

    invoke-direct {p1}, Lfreemarker/core/h3;-><init>()V

    throw p1

    :pswitch_0
    const/16 v0, 0x8e

    .line 6
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto/16 :goto_1

    .line 8
    :cond_2
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto/16 :goto_1

    .line 9
    :cond_3
    :pswitch_1
    iget v0, p0, Lfreemarker/core/j0;->return:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v0

    :cond_4
    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 10
    iget-object p1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v0, 0x14

    iget v2, p0, Lfreemarker/core/j0;->default:I

    aput v2, p1, v0

    .line 11
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 12
    new-instance p1, Lfreemarker/core/h3;

    invoke-direct {p1}, Lfreemarker/core/h3;-><init>()V

    throw p1

    :pswitch_2
    const/16 v0, 0x8d

    .line 13
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8c

    .line 14
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x8b

    .line 15
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x76

    .line 16
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x75

    .line 17
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x74

    .line 18
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x73

    .line 19
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_5
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_6
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v0

    .line 22
    :goto_0
    iget-object v1, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    const-string v1, "hash"

    .line 23
    invoke-direct {p0, p1, v1}, Lfreemarker/core/j0;->V2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, v1}, Lfreemarker/core/j0;->X2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, v1}, Lfreemarker/core/j0;->T2(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lfreemarker/core/a0;

    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lfreemarker/core/a0;-><init>(Lfreemarker/core/h0;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v1, v2, p1, v0}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    return-object v1

    .line 28
    :cond_7
    new-instance p1, Lfreemarker/core/h3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lfreemarker/core/m4;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid identifier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-direct {p1, v1, v2, v0}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x73
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8b
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final x()Lfreemarker/core/h0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->new()Lfreemarker/core/h0;

    move-result-object v0

    .line 2
    :goto_0
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    const/16 v3, 0x68

    const/16 v4, 0x67

    const/16 v5, 0x99

    const/16 v6, 0x87

    const/16 v7, 0x85

    const/16 v8, 0x81

    const/16 v9, 0x63

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    .line 3
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v2, 0x0

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    return-object v0

    .line 4
    :cond_1
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_2
    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_4

    if-ne v1, v3, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->static(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/4 v1, 0x1

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 7
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 8
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 9
    :cond_4
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->this(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->d(Lfreemarker/core/h0;)Lfreemarker/core/a2;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->import(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_7
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->throw(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_8
    invoke-virtual {p0, v0}, Lfreemarker/core/j0;->while(Lfreemarker/core/h0;)Lfreemarker/core/h0;

    move-result-object v0

    goto :goto_0
.end method

.method public final y()Lfreemarker/core/h0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/j0;->do()Lfreemarker/core/h0;

    move-result-object v0

    .line 2
    iget v1, p0, Lfreemarker/core/j0;->return:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 3
    iget-object v1, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v2, 0xc

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v1, v2

    goto/16 :goto_3

    .line 4
    :pswitch_0
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_1
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_1

    .line 5
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0xb

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 6
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 7
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 8
    :pswitch_1
    iget v1, p0, Lfreemarker/core/j0;->return:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lfreemarker/core/j0;->P2()I

    move-result v1

    :cond_2
    const/16 v4, 0x65

    if-eq v1, v4, :cond_4

    const/16 v4, 0x66

    if-ne v1, v4, :cond_3

    .line 9
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lfreemarker/core/j0;->extends:[I

    const/16 v1, 0xa

    iget v3, p0, Lfreemarker/core/j0;->default:I

    aput v3, v0, v1

    .line 11
    invoke-direct {p0, v2}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    .line 12
    new-instance v0, Lfreemarker/core/h3;

    invoke-direct {v0}, Lfreemarker/core/h3;-><init>()V

    throw v0

    .line 13
    :cond_4
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    const/4 v1, 0x1

    .line 14
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/j0;->do()Lfreemarker/core/h0;

    move-result-object v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x64

    .line 15
    invoke-direct {p0, v1}, Lfreemarker/core/j0;->J2(I)Lfreemarker/core/m4;

    move-result-object v1

    const/4 v2, 0x2

    const v4, 0x7fffffff

    .line 16
    invoke-direct {p0, v4}, Lfreemarker/core/j0;->B0(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {p0}, Lfreemarker/core/j0;->do()Lfreemarker/core/h0;

    move-result-object v3

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    move-object v2, v1

    const/4 v1, 0x2

    .line 18
    :goto_1
    invoke-direct {p0, v0}, Lfreemarker/core/j0;->Y2(Lfreemarker/core/h0;)V

    if-eqz v3, :cond_6

    .line 19
    invoke-direct {p0, v3}, Lfreemarker/core/j0;->Y2(Lfreemarker/core/h0;)V

    .line 20
    :cond_6
    new-instance v4, Lfreemarker/core/k3;

    invoke-direct {v4, v0, v3, v1}, Lfreemarker/core/k3;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;I)V

    if-eqz v3, :cond_7

    .line 21
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v3}, Lfreemarker/core/h4;->final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V

    goto :goto_2

    .line 22
    :cond_7
    iget-object v1, p0, Lfreemarker/core/j0;->do:Lfreemarker/template/static;

    invoke-virtual {v4, v1, v0, v2}, Lfreemarker/core/h4;->super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V

    :goto_2
    move-object v0, v4

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public z(Lfreemarker/core/k0;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lfreemarker/core/j0;->while:Lfreemarker/core/k0;

    .line 2
    new-instance p1, Lfreemarker/core/m4;

    invoke-direct {p1}, Lfreemarker/core/m4;-><init>()V

    iput-object p1, p0, Lfreemarker/core/j0;->native:Lfreemarker/core/m4;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lfreemarker/core/j0;->return:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lfreemarker/core/j0;->default:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x74

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lfreemarker/core/j0;->extends:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    iget-object p1, p0, Lfreemarker/core/j0;->finally:[Lfreemarker/core/j0$if;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lfreemarker/core/j0$if;

    invoke-direct {v1}, Lfreemarker/core/j0$if;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
