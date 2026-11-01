.class public Lorg/apache/commons/lang3/time/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/if$do;
    }
.end annotation


# static fields
.field public static final case:Ljava/lang/Object;

.field public static final do:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

.field public static final else:Ljava/lang/Object;

.field public static final for:Ljava/lang/Object;

.field public static final goto:Ljava/lang/Object;

.field public static final if:Ljava/lang/Object;

.field public static final new:Ljava/lang/Object;

.field public static final try:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "y"

    .line 1
    sput-object v0, Lorg/apache/commons/lang3/time/if;->if:Ljava/lang/Object;

    const-string v0, "M"

    .line 2
    sput-object v0, Lorg/apache/commons/lang3/time/if;->for:Ljava/lang/Object;

    const-string v0, "d"

    .line 3
    sput-object v0, Lorg/apache/commons/lang3/time/if;->new:Ljava/lang/Object;

    const-string v0, "H"

    .line 4
    sput-object v0, Lorg/apache/commons/lang3/time/if;->try:Ljava/lang/Object;

    const-string v0, "m"

    .line 5
    sput-object v0, Lorg/apache/commons/lang3/time/if;->case:Ljava/lang/Object;

    const-string v0, "s"

    .line 6
    sput-object v0, Lorg/apache/commons/lang3/time/if;->else:Ljava/lang/Object;

    const-string v0, "S"

    .line 7
    sput-object v0, Lorg/apache/commons/lang3/time/if;->goto:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/if$do;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-eqz v4, :cond_0

    if-eq v7, v8, :cond_0

    .line 4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_0
    if-eq v7, v8, :cond_9

    const/16 v8, 0x48

    if-eq v7, v8, :cond_8

    const/16 v8, 0x4d

    if-eq v7, v8, :cond_7

    const/16 v8, 0x53

    if-eq v7, v8, :cond_6

    const/16 v8, 0x64

    if-eq v7, v8, :cond_5

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_4

    const/16 v8, 0x73

    if-eq v7, v8, :cond_3

    const/16 v8, 0x79

    if-eq v7, v8, :cond_2

    if-nez v5, :cond_1

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v8, Lorg/apache/commons/lang3/time/if$do;

    invoke-direct {v8, v5}, Lorg/apache/commons/lang3/time/if$do;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v7, Lorg/apache/commons/lang3/time/if;->if:Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_3
    sget-object v7, Lorg/apache/commons/lang3/time/if;->else:Ljava/lang/Object;

    goto :goto_2

    .line 10
    :cond_4
    sget-object v7, Lorg/apache/commons/lang3/time/if;->case:Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_5
    sget-object v7, Lorg/apache/commons/lang3/time/if;->new:Ljava/lang/Object;

    goto :goto_2

    .line 12
    :cond_6
    sget-object v7, Lorg/apache/commons/lang3/time/if;->goto:Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_7
    sget-object v7, Lorg/apache/commons/lang3/time/if;->for:Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_8
    sget-object v7, Lorg/apache/commons/lang3/time/if;->try:Ljava/lang/Object;

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    move-object v5, v2

    move-object v7, v5

    const/4 v4, 0x0

    goto :goto_2

    .line 15
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    new-instance v4, Lorg/apache/commons/lang3/time/if$do;

    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/time/if$do;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :goto_1
    move-object v7, v2

    :goto_2
    if-eqz v7, :cond_c

    if-eqz v6, :cond_b

    .line 17
    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/if$do;->for()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_b

    .line 18
    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/if$do;->new()V

    goto :goto_3

    .line 19
    :cond_b
    new-instance v5, Lorg/apache/commons/lang3/time/if$do;

    invoke-direct {v5, v7}, Lorg/apache/commons/lang3/time/if$do;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    :goto_3
    move-object v5, v2

    :cond_c
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    if-nez v4, :cond_e

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/commons/lang3/time/if$do;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/lang3/time/if$do;

    return-object p0

    .line 22
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched quote in format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static case(JZZ)Ljava/lang/String;
    .locals 7

    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/if;->if(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 0 minutes"

    const-string v0, " 0 hours"

    const-string v1, " 0 seconds"

    const-string v2, " 0 days"

    const-string v3, " "

    const-string v4, ""

    if-eqz p2, :cond_2

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0, v2, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 5
    invoke-static {p2, v0, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 7
    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq p2, v5, :cond_1

    .line 9
    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    if-eqz p3, :cond_4

    .line 12
    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p3, v1, :cond_4

    .line 14
    invoke-static {p2, p1, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p1, p3, :cond_3

    .line 16
    invoke-static {p0, v0, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p2, p3, :cond_4

    .line 18
    invoke-static {p1, v2, v4}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, p2

    .line 19
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 seconds"

    const-string p2, " 1 second"

    .line 20
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 minutes"

    const-string p2, " 1 minute"

    .line 21
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 hours"

    const-string p2, " 1 hour"

    .line 22
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " 1 days"

    const-string p2, " 1 day"

    .line 23
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/class;->T0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static catch(JZI)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    const/16 p1, 0x30

    .line 2
    invoke-static {p0, p3, p1}, Lorg/apache/commons/lang3/class;->p0(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static do([Lorg/apache/commons/lang3/time/if$do;JJJJJJJZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p13

    move/from16 v3, p15

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_a

    .line 3
    aget-object v9, v0, v7

    .line 4
    invoke-virtual {v9}, Lorg/apache/commons/lang3/time/if$do;->for()Ljava/lang/Object;

    move-result-object v10

    .line 5
    invoke-virtual {v9}, Lorg/apache/commons/lang3/time/if$do;->if()I

    move-result v9

    .line 6
    instance-of v11, v10, Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    .line 7
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move v0, v5

    move v15, v7

    goto :goto_2

    .line 8
    :cond_0
    sget-object v11, Lorg/apache/commons/lang3/time/if;->if:Ljava/lang/Object;

    if-ne v10, v11, :cond_1

    move-wide/from16 v13, p1

    .line 9
    invoke-static {v13, v14, v3, v9}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move v0, v5

    move v15, v7

    :goto_1
    const/4 v8, 0x0

    :goto_2
    move-wide/from16 v5, p11

    goto/16 :goto_7

    :cond_1
    move-wide/from16 v13, p1

    .line 10
    sget-object v11, Lorg/apache/commons/lang3/time/if;->for:Ljava/lang/Object;

    if-ne v10, v11, :cond_2

    move v15, v7

    move-wide/from16 v6, p3

    .line 11
    invoke-static {v6, v7, v3, v9}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move-wide/from16 v11, p7

    :goto_4
    move-wide/from16 v13, p9

    :goto_5
    move v0, v5

    goto :goto_1

    :cond_2
    move v15, v7

    move-wide/from16 v6, p3

    .line 12
    sget-object v11, Lorg/apache/commons/lang3/time/if;->new:Ljava/lang/Object;

    if-ne v10, v11, :cond_3

    move-wide/from16 v12, p5

    .line 13
    invoke-static {v12, v13, v3, v9}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p5

    .line 14
    sget-object v14, Lorg/apache/commons/lang3/time/if;->try:Ljava/lang/Object;

    if-ne v10, v14, :cond_4

    move-wide/from16 v11, p7

    .line 15
    invoke-static {v11, v12, v3, v9}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p7

    .line 16
    sget-object v14, Lorg/apache/commons/lang3/time/if;->case:Ljava/lang/Object;

    if-ne v10, v14, :cond_5

    move-wide/from16 v13, p9

    .line 17
    invoke-static {v13, v14, v3, v9}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p9

    .line 18
    sget-object v0, Lorg/apache/commons/lang3/time/if;->else:Ljava/lang/Object;

    if-ne v10, v0, :cond_6

    move v0, v5

    move-wide/from16 v5, p11

    .line 19
    invoke-static {v5, v6, v3, v9}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    move v0, v5

    move-wide/from16 v5, p11

    .line 20
    sget-object v7, Lorg/apache/commons/lang3/time/if;->goto:Ljava/lang/Object;

    if-ne v10, v7, :cond_9

    if-eqz v8, :cond_8

    const/4 v7, 0x3

    if-eqz v3, :cond_7

    .line 21
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_7
    const/4 v8, 0x1

    .line 22
    invoke-static {v1, v2, v8, v7}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 23
    :cond_8
    invoke-static {v1, v2, v3, v9}, Lorg/apache/commons/lang3/time/if;->catch(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/4 v8, 0x0

    :cond_9
    :goto_7
    add-int/lit8 v7, v15, 0x1

    move v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 24
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static else(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v5, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/if;->goto(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static for(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 18

    .line 1
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/if;->break(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/if$do;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/apache/commons/lang3/time/if;->new:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x5265c00

    .line 3
    div-long v6, p0, v4

    mul-long v4, v4, v6

    sub-long v4, p0, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p0

    move-wide v6, v2

    .line 4
    :goto_0
    sget-object v1, Lorg/apache/commons/lang3/time/if;->try:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v8, 0x36ee80

    .line 5
    div-long v10, v4, v8

    mul-long v8, v8, v10

    sub-long/2addr v4, v8

    goto :goto_1

    :cond_1
    move-wide v10, v2

    .line 6
    :goto_1
    sget-object v1, Lorg/apache/commons/lang3/time/if;->case:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/32 v8, 0xea60

    .line 7
    div-long v12, v4, v8

    mul-long v8, v8, v12

    sub-long/2addr v4, v8

    goto :goto_2

    :cond_2
    move-wide v12, v2

    .line 8
    :goto_2
    sget-object v1, Lorg/apache/commons/lang3/time/if;->else:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x3e8

    .line 9
    div-long v8, v4, v1

    mul-long v1, v1, v8

    sub-long/2addr v4, v1

    move-wide/from16 v16, v4

    move-wide v14, v8

    goto :goto_3

    :cond_3
    move-wide v14, v2

    move-wide/from16 v16, v4

    :goto_3
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v6

    move-wide v7, v10

    move-wide v9, v12

    move-wide v11, v14

    move-wide/from16 v13, v16

    move/from16 v15, p3

    .line 10
    invoke-static/range {v0 .. v15}, Lorg/apache/commons/lang3/time/if;->do([Lorg/apache/commons/lang3/time/if$do;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static goto(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 17

    .line 1
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/if;->break(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/if$do;

    move-result-object v0

    .line 2
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v3, p0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v4, p2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0xe

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v4, v3

    const/16 v3, 0xd

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v5, v3

    const/16 v3, 0xc

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v6, v3

    const/16 v3, 0xb

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v7, v3

    const/4 v3, 0x5

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    .line 11
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    .line 12
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v13

    sub-int/2addr v12, v13

    :goto_0
    if-gez v4, :cond_0

    add-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v5, :cond_1

    add-int/lit8 v5, v5, 0x3c

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v6, :cond_2

    add-int/lit8 v6, v6, 0x3c

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gez v7, :cond_3

    add-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 13
    :cond_3
    sget-object v13, Lorg/apache/commons/lang3/time/if;->for:Ljava/lang/Object;

    invoke-static {v0, v13}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_6

    :goto_4
    if-gez v8, :cond_4

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v10, v10, -0x1

    .line 15
    invoke-virtual {v1, v9, v11}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    :cond_4
    :goto_5
    if-gez v10, :cond_5

    add-int/lit8 v10, v10, 0xc

    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 16
    :cond_5
    sget-object v1, Lorg/apache/commons/lang3/time/if;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v12, :cond_c

    :goto_6
    if-eqz v12, :cond_c

    mul-int/lit8 v12, v12, 0xc

    add-int/2addr v10, v12

    const/4 v12, 0x0

    goto :goto_6

    .line 17
    :cond_6
    sget-object v13, Lorg/apache/commons/lang3/time/if;->if:Ljava/lang/Object;

    invoke-static {v0, v13}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 18
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-gez v10, :cond_7

    add-int/lit8 v12, v12, -0x1

    .line 19
    :cond_7
    :goto_7
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v10, v12, :cond_9

    const/4 v10, 0x6

    .line 20
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v13

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    sub-int/2addr v13, v15

    add-int/2addr v8, v13

    .line 21
    instance-of v13, v1, Ljava/util/GregorianCalendar;

    if-eqz v13, :cond_8

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v13, v11, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v15, 0x1d

    if-ne v13, v15, :cond_8

    add-int/lit8 v8, v8, 0x1

    .line 22
    :cond_8
    invoke-virtual {v1, v11, v11}, Ljava/util/Calendar;->add(II)V

    .line 23
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    .line 24
    :cond_a
    :goto_8
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-eq v10, v13, :cond_b

    .line 25
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    add-int/2addr v8, v10

    .line 26
    invoke-virtual {v1, v9, v11}, Ljava/util/Calendar;->add(II)V

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_9
    if-gez v8, :cond_c

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/2addr v8, v2

    add-int/lit8 v10, v10, -0x1

    .line 28
    invoke-virtual {v1, v9, v11}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    .line 29
    :cond_c
    sget-object v1, Lorg/apache/commons/lang3/time/if;->new:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    mul-int/lit8 v8, v8, 0x18

    add-int/2addr v7, v8

    const/4 v8, 0x0

    .line 30
    :cond_d
    sget-object v1, Lorg/apache/commons/lang3/time/if;->try:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    const/4 v7, 0x0

    .line 31
    :cond_e
    sget-object v1, Lorg/apache/commons/lang3/time/if;->case:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    const/4 v6, 0x0

    .line 32
    :cond_f
    sget-object v1, Lorg/apache/commons/lang3/time/if;->else:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if$do;->do([Lorg/apache/commons/lang3/time/if$do;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    goto :goto_a

    :cond_10
    move v14, v5

    :goto_a
    int-to-long v1, v12

    int-to-long v9, v10

    int-to-long v11, v8

    int-to-long v7, v7

    int-to-long v5, v6

    int-to-long v13, v14

    int-to-long v3, v4

    move-wide v15, v3

    move-wide v3, v9

    move-wide v9, v5

    move-wide v5, v11

    move-wide v11, v13

    move-wide v13, v15

    move/from16 v15, p5

    .line 33
    invoke-static/range {v0 .. v15}, Lorg/apache/commons/lang3/time/if;->do([Lorg/apache/commons/lang3/time/if$do;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static if(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/if;->for(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static new(J)Ljava/lang/String;
    .locals 1

    const-string v0, "H:mm:ss.SSS"

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/if;->if(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static this(JJ)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/if;->goto(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try(J)Ljava/lang/String;
    .locals 2

    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/if;->for(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
